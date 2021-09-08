<?php

declare(strict_types=1);

namespace App\Controller;

/**
 * Bookmarks Controller
 *
 * @property \App\Model\Table\BookmarksTable $Bookmarks
 * @method \App\Model\Entity\Bookmark[]|\Cake\Datasource\ResultSetInterface paginate($object = null, array $settings = [])
 */
class BookmarksController extends AppController
{

    /*public $paginate = [
        'limit' => 10,
        'maxLimit' => 10,
        'totallimit' => 1000,
        'order' => [
            'Bookmarks.bookmarks_id' => 'desc'
        ]
    ];*/

    var $bookmarks_types = [
        0 => "bookmark",
        2 => "notice",
        1 => "collection",
    ];


    public function initialize(): void
    {
        parent::initialize();       
        // $this->loadModel("Bookmarks");
        // Created app.php file inside /templates/layout/app.php
        #$this->viewBuilder()->setLayout("app");
    }

    public function domains()
    {

        $query = $this->Bookmarks->find();
        $query->select(
            [
                //'url' => $query->newExpr('SUBSTRING_INDEX(`bookmarks_url`, "/", 3)'), # alternative way
                'url' => $query->func()->substring_index([
                    "`bookmarks_url`" => 'literal',
                    "'/'" => 'literal',
                    3 => 'literal'
                ]),
                'total' => $query->func()->count('*')
            ]
        )
            ->where(['bookmarks_id !=' => 0])
            ->group('url')
            ->having(['total >' => 3])
            ->order(['total' => 'DESC'])
            ->limit(1000);   

        // debug($query); # check sql statement call
        // debug($query->all()); # check results
        /* foreach ($query->all() as $row) { debug($row->url); } */

        $results = $query->all();
        $this->set('top_bookmarks', $results);
    }


    /**
     * Index method
     *
     * @return \Cake\Http\Response|null|void Renders view
     */
    public function index()
    {
        $this->paginate = [
            'contain' => ['Categories'],
            'limit' => 10,
            'order' => [
                'Bookmarks.bookmarks_id' => 'desc'
            ]
        ];
        $bookmarks = $this->paginate($this->Bookmarks);

        $this->set(compact('bookmarks'));
        $this->set('bookmarks_types', $this->bookmarks_types);
    }

    /**
     * Search method
     *
     * @return \Cake\Http\Response|null|void Renders view
     */
    public function search()
    {
        $bookmarks = [];
        $search_string = $this->request->getData('search_string');
        if(!empty($search_string)){
            $bookmarks = $this->paginate(
                $this->Bookmarks->find(
                    'all',
                    ['contain' => ['Categories']]
                )
                    ->where(['bookmarks_name LIKE ' =>  "%$search_string%"])
            );
        }
        
        $this->set(compact('bookmarks'));
        $this->set('bookmarks_types', $this->bookmarks_types);
    }


    /**
     * View method
     *
     * @param string|null $id Bookmark id.
     * @return \Cake\Http\Response|null|void Renders view
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function view($id = null)
    {
        $bookmark = $this->Bookmarks->get($id, [
            'contain' => ['Categories'],
        ]);

        $this->set(compact('bookmark'));
    }

    /**
     * Add method
     *
     * @return \Cake\Http\Response|null|void Redirects on successful add, renders view otherwise.
     */
    public function add()
    {
        $bookmark = $this->Bookmarks->newEmptyEntity();
        if ($this->request->is('post')) {
            $bookmark = $this->Bookmarks->patchEntity($bookmark, $this->request->getData());
            if ($this->Bookmarks->save($bookmark)) {
                $this->Flash->success(__('The bookmark has been saved.'));

                return $this->redirect(['action' => 'index']);
            }
            $this->Flash->error(__('The bookmark could not be saved. Please, try again.'));
        }
        $categories = $this->Bookmarks->Categories->find('list', ['limit' => 200]);
        $this->set(compact('bookmark', 'categories'));

        // get categories
        $this->loadModel('Categories');
        $result = $this->Categories->find('all', ['limit' => 500])->all();
        $this->set('categories_list', $result);
        # debug($result);
        $this->set('bookmarks_types', $this->bookmarks_types);
    }

    /**
     * Edit method
     *
     * @param string|null $id Bookmark id.
     * @return \Cake\Http\Response|null|void Redirects on successful edit, renders view otherwise.
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function edit($id = null)
    {
        $bookmark = $this->Bookmarks->get($id, [
            'contain' => [],
        ]);
        if ($this->request->is(['patch', 'post', 'put'])) {
            $bookmark = $this->Bookmarks->patchEntity($bookmark, $this->request->getData());
            if ($this->Bookmarks->save($bookmark)) {
                $this->Flash->success(__('The bookmark has been saved.'));

                return $this->redirect(['action' => 'index']);
            }
            $this->Flash->error(__('The bookmark could not be saved. Please, try again.'));
        }
        $categories = $this->Bookmarks->Categories->find('list', ['limit' => 200]);
        $this->set(compact('bookmark', 'categories'));

        // get categories
        $this->loadModel('Categories');
        $result = $this->Categories->find('all', ['limit' => 500])->all();
        $this->set('categories_list', $result);
        # debug($result);
        $this->set('bookmarks_types', $this->bookmarks_types);
    }

    /**
     * Delete method
     *
     * @param string|null $id Bookmark id.
     * @return \Cake\Http\Response|null|void Redirects to index.
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function delete($id = null)
    {
        $this->request->allowMethod(['post', 'delete']);
        $bookmark = $this->Bookmarks->get($id);
        if ($this->Bookmarks->delete($bookmark)) {
            $this->Flash->success(__('The bookmark has been deleted.'));
        } else {
            $this->Flash->error(__('The bookmark could not be deleted. Please, try again.'));
        }

        return $this->redirect(['action' => 'index']);
    }
}
