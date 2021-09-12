<?php

/**
 * CakePHP(tm) : Rapid Development Framework (https://cakephp.org)
 * Copyright (c) Cake Software Foundation, Inc. (https://cakefoundation.org)
 *
 * Licensed under The MIT License
 * For full copyright and license information, please see the LICENSE.txt
 * Redistributions of files must retain the above copyright notice.
 *
 * @copyright     Copyright (c) Cake Software Foundation, Inc. (https://cakefoundation.org)
 * @link          https://cakephp.org CakePHP(tm) Project
 * @since         0.10.0
 * @license       https://opensource.org/licenses/mit-license.php MIT License
 * @var \App\View\AppView $this
 */

use Cake\Routing\Route\Route;
use Cake\Routing\Router;

$cakeDescription = 'CakePHP Bookmark System';
?>
<!DOCTYPE html>
<html>

<head>
    <?= $this->Html->charset() ?>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>
        <?= $cakeDescription ?>:
        <?= $this->fetch('title') ?>
    </title>
    <?= $this->Html->meta('icon') ?>

    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="//fonts.googleapis.com/css?family=Raleway:400,700">
    <link rel="stylesheet" href="//bootswatch.com/_vendor/font-awesome/css/font-awesome.min.css">

    <?= $this->Html->css(['normalize.min', 'milligram.min', 'cake']) ?>

    <?= $this->fetch('meta') ?>
    <?= $this->fetch('css') ?>
    <?= $this->fetch('script') ?>

    <script src="//code.jquery.com/jquery-3.6.0.js"></script>
    <?php echo $this->Html->meta('csrfToken', $this->request->getAttribute('csrfToken')); ?>
    <script>
        var csrfToken = $('meta[name="csrfToken"]').attr('content');
    </script>
    <?php echo $this->Html->script('custom'); ?>
</head>

<body>
    <nav class="top-nav">
        <div class="top-nav-title">
            <a href="<?= $this->Url->build('/') ?>"><span>CakePHP</span> Bookmarks</a>
        </div>
        <div class="top-nav-links">
            <a href="<?php echo Router::url('/bookmarks/search', true) ?>">Search</a>
            <a href="<?php echo Router::url('/bookmarks', true) ?>">Bookmarks</a>
            <a href="<?php echo Router::url('/bookmarks/domains', true) ?>">Top</a>
            <a href="<?php echo Router::url('/categories', true) ?>">Categories</a>
            <a href="<?php echo Router::url('/favourites', true) ?>">Favourites</a>
            <a href="<?php echo Router::url('/pages/home', true) ?>">CakePHP PAGE</a>
            <a target="_blank" rel="noopener" href="https://book.cakephp.org/4/">Docs</a>
            <a target="_blank" rel="noopener" href="https://api.cakephp.org/">API</a>
        </div>
    </nav>
    <main class="main">
        <div class="container">
            <?= $this->Flash->render() ?>
            <?= $this->fetch('content') ?>
        </div>
    </main>
    <footer>
    </footer>
</body>
</html>