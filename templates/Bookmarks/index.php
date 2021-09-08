<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\Bookmark[]|\Cake\Collection\CollectionInterface $bookmarks
 */
?>
<div class="bookmarks index content">
    <?= $this->Html->link(__('New Bookmark'), ['action' => 'add'], ['class' => 'button float-right']) ?>
    <h3><?= __('Bookmarks') ?></h3>
    <div class="table-responsive">
        <table>
            <thead>
                <tr>
                    <th><?= $this->Paginator->sort('bookmarks_id') ?></th>
                    <th><?= $this->Paginator->sort('categories_id') ?></th>
                    <th><?= $this->Paginator->sort('hash') ?></th>
                    <th><?= $this->Paginator->sort('name') ?></th>
                    <th><?= $this->Paginator->sort('type') ?></th>
                    <th><?= $this->Paginator->sort('url') ?></th>
                    <th><?= $this->Paginator->sort('Favs') ?></th>
                    <th class="actions"><?= __('Actions') ?></th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($bookmarks as $bookmark): ?>
                <tr>
                    <td><?= $this->Number->format($bookmark->bookmarks_id) ?></td>
                    <td><?= $bookmark->has('category') ? $this->Html->link($bookmark->category->categories_id, ['controller' => 'Categories', 'action' => 'view', $bookmark->category->categories_id]) : '' ?></td>
                    <td><?= h(date("d.m.Y", $bookmark->bookmarks_hash)) ?></td>
                    <td><?= h($bookmark->bookmarks_name) ?></td>
                    <td><?= h($bookmarks_types[$bookmark->bookmarks_type]) ?></td>
                    <td>
                        <a href="<?= h($bookmark->bookmarks_url) ?>" target="_blank">
                            <i class="fa fa-link"></i>
                        </a>                           
                    </td>
                    <td>
                        <a href="javascript:void(0)" class="btn btn-danger btn-toggle-fav" data-id="<?= $bookmark->bookmarks_id ?>">
                        <i class="fa fa-bookmark"></i>
                        </a>
                    </td>
                    <td class="actions" style="white-space: nowrap;">
                        <!-- 
                            <a href="<?= $this->Url->build('/bookmarks/view/' . $bookmark->bookmarks_id, ['fullBase' => true]) ?>" 
                            class="btn btn-warning">Edit</a>  
                        -->
                        <?= $this->Html->link(__('View'), ['action' => 'view', $bookmark->bookmarks_id],['class'=>'button button-outline']) ?>
                        <?= $this->Html->link(__('Edit'), ['action' => 'edit', $bookmark->bookmarks_id],['class'=>'button button-outline']) ?>
                        <?= $this->Form->postLink(__('Delete'), ['action' => 'delete', $bookmark->bookmarks_id], ['class'=>'button button-outline','confirm' => __('Are you sure you want to delete # {0}?', $bookmark->bookmarks_id)]) ?>
                    </td>
                </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
    </div>
    <div class="paginator">
        <ul class="pagination">
            <?= $this->Paginator->first('<< ' . __('first')) ?>
            <?= $this->Paginator->prev('< ' . __('previous')) ?>
            <?= $this->Paginator->numbers() ?>
            <?= $this->Paginator->next(__('next') . ' >') ?>
            <?= $this->Paginator->last(__('last') . ' >>') ?>
        </ul>
        <p><?= $this->Paginator->counter(__('Page {{page}} of {{pages}}, showing {{current}} record(s) out of {{count}} total')) ?></p>
    </div>
</div>
