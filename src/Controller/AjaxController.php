<?php /** @noinspection SqlNoDataSourceInspection */
/** @noinspection SqlDialectInspection */
/** @noinspection PhpUndefinedClassInspection */
/** @noinspection PhpUndefinedNamespaceInspection */

/** @noinspection PhpUnused */

namespace App\Controller;

# use App\Controller\AppController;
# use Exception;
use Cake\Datasource\ConnectionManager;
use Exception;

/**
 * @method loadModel(string $string)
 * @property $request
 */
class AjaxController extends AppController
{
    /**
     * @throws Exception
     */
    public function initialize(): void
    {
        parent::initialize();
        $this->loadModel("Bookmarks");
        $this->loadModel("Favourites");
    }

    /**
     *
     */
    public function toggle(): void
    {
        if ($this->request->is('ajax')) {

            // get ajax info
            /** @noinspection PhpUndefinedFieldInspection */
            $bookmark = $this->Bookmarks->get($this->request->getData("bookmarks_id"));
            // check if exists in DB
            $connection = ConnectionManager::get('default');
            $results = $connection
                ->execute('SELECT * FROM favourites WHERE bookmarks_id = :bookmarks_id', ['bookmarks_id' => $bookmark->bookmarks_id])
                ->fetchAll('assoc');

            if (empty($results)) {
                // make insert
                /** @noinspection PhpUndefinedFieldInspection */
                $query = $this->Favourites->query();
                $query->insert(['bookmarks_id'])
                    ->values([
                                 'bookmarks_id' => $bookmark->bookmarks_id
                             ])
                    ->execute();
                // $this->Flash->success(__('The bookmark has been saved.'. $bookmark->bookmarks_id));
                echo json_encode(array(
                                     "status"  => 1,
                                     "message" => "The bookmark " . $bookmark->bookmarks_id . " has been saved. - "
                                 ));
            } else {

                $favResult = array_shift($results);
                // delete fav
                /** @noinspection PhpUndefinedFieldInspection */
                $query = $this->Favourites->query();
                $query->delete()
                    ->where(['favourites_id' => $favResult["favourites_id"]])
                    ->execute();

                echo json_encode(array(
                                     "status"  => 1,
                                     //"message" => "The bookmark is already saved. "
                                     "message" => "The bookmark " . $favResult["favourites_id"] . " has been deleted."
                                 ));
            }
            exit;
        }
    }
}
