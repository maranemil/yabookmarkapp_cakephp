-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Erstellungszeit: 08. Sep 2021 um 20:19
-- Server-Version: 10.5.12-MariaDB-0ubuntu0.21.04.1
-- PHP-Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `yabookmarkapp_cakephp`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `body` text DEFAULT NULL,
  `published` tinyint(1) DEFAULT 0,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `articles`
--

INSERT INTO `articles` (`id`, `user_id`, `title`, `slug`, `body`, `published`, `created`, `modified`) VALUES
(1, 1, 'First Post', 'first-post', 'This is the first post.', 1, '2021-09-07 20:02:03', '2021-09-07 20:02:03');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `articles_tags`
--

CREATE TABLE `articles_tags` (
  `article_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `bookmarks`
--

CREATE TABLE `bookmarks` (
  `bookmarks_id` int(11) NOT NULL,
  `categories_id` int(11) DEFAULT NULL,
  `bookmarks_hash` varchar(255) NOT NULL,
  `bookmarks_name` varchar(255) NOT NULL,
  `bookmarks_url` text NOT NULL,
  `bookmarks_type` tinyint(1) UNSIGNED ZEROFILL NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `bookmarks`
--

INSERT INTO `bookmarks` (`bookmarks_id`, `categories_id`, `bookmarks_hash`, `bookmarks_name`, `bookmarks_url`, `bookmarks_type`) VALUES
(1, 3, '1630677392', 'StyleGAN2 - Official TensorFlow Implementation', 'https://github.com/NVlabs/stylegan2', 0),
(2, 3, '1630677392', 'StyleGAN-NADA', 'https://github.com/rinongal/StyleGAN-nada', 0),
(3, 1, '1630700510', 'IdeaPad L340 Gaming 15', 'https://www.lenovo.com/de/de/laptops/ideapad/l-series/IdeaPad-L340-15IRH-Gaming/p/88IPL301161', 0),
(4, 1, '1630700575', 'IdeaPad 5i', 'https://www.lenovo.com/de/de/laptops/ideapad/s-series/IdeaPad-5i-15IIL05/p/88IPS501391', 0),
(5, 1, '1630700713', 'timestamp', 'https://currentmillis.com/\r\nhttps://time.is/Unix\r\nhttps://www.unixtimestamp.com/\r\nhttps://www.epochconverter.com/', 1),
(6, 1, '1630739404', 'NPM package with 3 million weekly downloads had a severe vulnerability', 'https://arstechnica.com/information-technology/2021/09/npm-package-with-3-million-weekly-downloads-had-a-severe-vulnerability/', 0),
(7, 1, '1630739673', 'Neue Bild-KI zeigt das Potenzial riesiger KI-Modelle', 'https://mixed.de/neue-bild-ki-zeigt-das-potenzial-riesiger-ki-modelle/', 1),
(8, 1, '1630844675', 'Billion to Million', 'https://www.unitsconverters.com/en/Billion-To-Million/Unittounit-3704-3703?MeasurementId=23&From=3704&To=3703', 0),
(9, 3, '1630858771', 'StyleGAN2-ADA - Official PyTorch implementation', 'https://github.com/NVlabs/stylegan2-ada-pytorch', 0),
(10, 1, '1630924504', 'Hacker News ycombinator', 'https://news.ycombinator.com/', 0),
(15, 1, '1630866498', 'CakePHP Plugins', 'https://plugins.cakephp.org/packages\r\nhttps://plugins.cakephp.org/p/2077-cakephp-media\r\nhttps://plugins.cakephp.org/p/1611-cakephp-queue\r\nhttps://plugins.cakephp.org/p/266-syrup\r\nhttps://plugins.cakephp.org/p/638-osmosis\r\nhttps://plugins.cakephp.org/p/495-infinitas', 1),
(16, 1, '1630866562', 'YouTube Clone PHP', 'https://github.com/Lisa3000/videotube\r\nhttps://github.com/alnux/YouPHPTube', 1),
(17, 1, '1630866593', 'w3resource Tuutorials', 'https://www.w3resource.com/php/PHPUnit/a-gentle-introduction-to-unit-test-and-testing.php\r\nhttps://www.w3resource.com/laravel/laravel-tutorial.php\r\nhttps://www.w3resource.com/vue/installation.php\r\nhttps://www.w3resource.com/angular/getting-started-with-angular.php\r\nhttps://www.w3resource.com/jest/jest-getting-started.php', 1),
(18, 1, '1630866635', 'MySQL views and subqueries', 'https://dba.stackexchange.com/questions/148281/alternative-to-union-with-indexing\r\nhttps://gist.github.com/cuheguevara/5303010\r\nhttps://gist.github.com/nhatnx/84a2aa8548a5e9ee4c6c0b16db773480\r\nhttps://stackoverflow.com/questions/17942508/sql-split-values-to-multiple-rows\r\nhttps://stackoverflow.com/questions/28171474/solution-to-subquery-returns-more-than-1-row-error\r\nhttps://www.joyofdata.de/blog/generating-virtual-tables-for-join-operations-in-mysql/\r\nhttps://stackoverflow.com/questions/8909677/mysql-reuse-virtual-row\r\nhttps://dev.mysql.com/doc/refman/8.0/en/all-subqueries.html\r\nhttps://www.w3resource.com/mysql/subqueries/index.php\r\nhttps://www.mysqltutorial.org/mysql-derived-table/\r\nhttps://mkyong.com/database/convert-subquery-result-to-array/', 1),
(19, 1, '1630866660', 'Javascript Date', 'https://getdatepicker.com/4/Installing/\r\nhttps://developer.mozilla.org/de/docs/Web/JavaScript/Reference/Global_Objects/Date', 1),
(20, 1, '1630866677', 'PHP Error Reporting Level Calculator', 'https://www.php.net/manual/de/errorfunc.constants.php\r\nhttps://maximivanov.github.io/php-error-reporting-calculator/', 1),
(21, 1, '1630866700', 'google  maps', 'https://www.google.de/maps\r\nhttps://earth.google.com/web/', 1),
(22, 1, '1630866747', 'timepicker  bootstrap jquery', 'https://github.com/jdewit/bootstrap-timepicker\r\nhttps://docs.microsoft.com/de-de/dotnet/api/system.windows.forms.datetimepicker.customformat?view=net-5.0\r\nhttps://getdatepicker.com/4/#time-only\r\nhttps://timepicker.co/\r\nhttps://jdewit.github.io/bootstrap-timepicker/\r\nhttps://www.jonthornton.com/jquery-timepicker/\r\nhttps://vitalets.github.io/clockface/', 1),
(23, 1, '1630866767', 'mongodb  python  manual', 'https://docs.mongodb.com/manual/introduction/\r\nhttps://docs.python.org/3/contents.html', 1),
(24, 1, '1630866801', 'scala  basics', 'https://www.scala-lang.org/\r\nhttps://docs.scala-lang.org/tour/tour-of-scala.html\r\nhttps://docs.scala-lang.org/\r\nhttps://docs.scala-lang.org/tour/basics.html', 1),
(25, 1, '1630866823', 'redis admin', 'https://rapidapi.com/de/apilayernet/api/rest-countries-v1\r\nhttps://github.com/erikdubbelboer/phpRedisAdmin\r\nhttps://dubbelboer.com/phpRedisAdmin/?overview\r\nhttps://github.com/joeferner/redis-commander\r\nhttps://www.npmjs.com/package/redis-commander\r\nhttps://github.com/sasanrose/phpredmin', 1),
(26, 1, '1630866841', 'public soap apis', 'https://dog.ceo/dog-api/\r\nhttps://documenter.getpostman.com/view/8854915/Szf26WHn?version=latest\r\nhttps://www.predic8.de/public-soap-web-services.htm', 1),
(27, 14, '1630870750', 'Zend Laminas', 'https://docs.laminas.dev/\r\nhttps://api-tools.getlaminas.org/\r\nhttps://docs.mezzio.dev/\r\nhttps://getlaminas.org/\r\nhttps://framework.zend.com/manual/2.0/en/modules/zend.soap.auto-discovery.html', 1),
(28, 1, '1630866888', 'free house loops', 'https://newloops.com/pages/free-progressive-house-loops\r\nhttps://www.looperman.com/loops/genres/free-house-loops-samples-sounds-wavs-download', 1),
(29, 1, '1630866900', 'house loops', 'https://www.producerloops.com/download-house-loops-samples/\r\nhttps://www.loopmasters.com/genres/25-House', 1),
(30, 1, '1630866943', 'cakephp  book 2x', 'https://book.cakephp.org/2/en/models/saving-your-data.html\r\nhttps://book.cakephp.org/2/en/models/retrieving-your-data.html#prepared-statements\r\nhttps://book.cakephp.org/2/en/models/retrieving-your-data.html\r\nhttps://book.cakephp.org/2/en/tutorials-and-examples/blog/part-two.html', 1),
(31, 1, '1630866973', 'mysql  docs', 'https://dev.mysql.com/doc/refman/5.6/en/select.html\r\nhttps://dev.mysql.com/doc/refman/5.6/en/query-cache.html\r\nhttps://dev.mysql.com/doc/refman/5.6/en/do.html\r\nhttps://dev.mysql.com/doc/refman/5.6/en/load-data.html\r\nhttps://dev.mysql.com/doc/refman/5.6/en/replace.html\r\nhttps://dev.mysql.com/doc/refman/5.6/en/select.html\r\nhttps://dev.mysql.com/doc/refman/5.6/en/join.html\r\nhttps://dev.mysql.com/doc/refman/5.6/en/union.html\r\nhttps://dev.mysql.com/doc/refman/5.6/en/subqueries.html\r\nhttps://dev.mysql.com/doc/refman/5.6/en/commit.html\r\nhttps://dev.mysql.com/doc/refman/5.6/en/prepare.html\r\nhttps://dev.mysql.com/doc/refman/5.6/en/sql-prepared-statements.html\r\nhttps://dev.mysql.com/doc/refman/5.6/en/execute.html\r\nhttps://dev.mysql.com/doc/refman/5.6/en/deallocate-prepare.html\r\nhttps://dev.mysql.com/doc/refman/5.6/en/flush.html\r\nhttps://dev.mysql.com/doc/refman/5.6/en/cache-index.html\r\nhttps://dev.mysql.com/doc/refman/5.6/en/load-index.html\r\nhttps://dev.mysql.com/doc/refman/5.6/en/reset.html\r\nhttps://dev.mysql.com/doc/refman/5.6/en/fulltext-search.html\r\nhttps://dev.mysql.com/doc/refman/5.6/en/bit-functions.html\r\nhttps://dev.mysql.com/doc/refman/5.6/en/encryption-functions.html\r\nhttps://dev.mysql.com/doc/refman/5.6/en/locking-functions.html\r\nhttps://dev.mysql.com/doc/refman/5.6/en/query-cache.html', 1),
(32, 14, '1630870718', 'HTML Mozilla  Developer Wiki', 'https://www.w3.org/html/\r\nhttps://html.spec.whatwg.org/multipage/dom.html\r\nhttps://developer.mozilla.org/de/docs/Web/HTML\r\nhttps://w3id.org/\r\nhttps://www.w3schools.com/html/html_id.asp\r\nhttps://www.w3.org/TR/did-core/\r\nhttps://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/id\r\nhttps://wiki.selfhtml.org/wiki/HTML/Attribute/id', 1),
(33, 14, '1630870701', 'Mozilla  Web Audio API', 'https://developer.mozilla.org/en-US/docs/Web/API/Web_Audio_API\r\nhttps://developer.mozilla.org/en-US/docs/Web/API/Web_Audio_API\r\nhttps://css-tricks.com/form-validation-web-audio/\r\nhttps://developer.mozilla.org/en-US/docs/Web/API/Web_Audio_API/Basic_concepts_behind_Web_Audio_API\r\nhttps://developer.mozilla.org/en-US/docs/Web/API/Web_Audio_API/Advanced_techniques\r\nhttps://developer.mozilla.org/en-US/docs/Learn/JavaScript', 1),
(34, 1, '1630867090', 'free videos', 'https://pixabay.com/videos/\r\nhttps://pixabay.com/\r\nhttps://mazwai.com/\r\nhttps://mixkit.co/\r\nhttps://coverr.co/\r\nhttps://www.videvo.net/\r\nhttps://www.videezy.com/\r\nhttps://www.storyblocks.com/video\r\nhttps://www.videvo.net/', 1),
(35, 13, '1630904073', 'Replacing Docker Desktop with hyperkit and minikube', 'https://arnon.me/2021/09/replace-docker-with-minikube/', 0),
(36, 15, '1630904131', '8 Useful Firefox Extensions For Ethical Hacking and Security Research', 'https://www.geeksforgeeks.org/8-useful-firefox-extensions-for-ethical-hacking-and-security-research/', 0),
(37, 15, '1630904154', 'Contribute at Fedora Linux 35', 'https://fedoramagazine.org/contribute-at-fedora-linux-35-audio-i18n-gnome-41-and-kernel-test-days/', 0),
(38, 9, '1630904172', 'Google Chrome is the worst privacy offender', 'https://www.cnet.com/tech/services-and-software/if-you-care-about-your-privacy-you-need-to-change-these-browser-settings-right-now/', 0),
(39, 16, '1630904203', 'How Pros Automate Repetitive Code using VS Code', 'https://dev.to/ruppysuppy/how-pros-automate-repetitive-code-using-vs-code-53b', 0),
(40, 15, '1630904247', 'Node.js archives serious tar handling vulnerabilities with software update', 'https://portswigger.net/daily-swig/node-js-archives-serious-tar-handling-vulnerabilities-with-software-update', 0),
(41, 16, '1630904262', 'How to create Music player with pure HTML, CSS, JS', 'https://dev.to/kunaal438/how-to-create-music-player-with-pure-html-css-js-c1j', 0),
(42, 16, '1630904315', 'Create a Netflix clone from Scratch: JavaScript PHP + MySQL', 'https://dev.to/cglikpo/create-a-netflix-clone-from-scratch-javascript-php-mysql-day-40-41p3', 0),
(43, 15, '1630904602', 'How To Set Up ModSecurity With Apache On Debian', 'https://www.linuxbabe.com/security/modsecurity-apache-debian-ubuntu', 0),
(44, 15, '1630910323', '8 crucial reasons to go for a Headless CMS plus a look at the top 10 platform', 'https://0707.agency/insights/8-crucial-reasons-to-go-for-a-headless-cms-plus-a-look-at-the-top-10-platforms/', 0),
(45, 16, '1630910345', 'Building a financial mobile app at scale with React-Native', 'https://alexmngn.medium.com/building-a-financial-mobile-app-at-scale-with-react-native-571f998e7a5d', 0),
(46, 16, '1630910362', '10 Best Python Frameworks For Web Development ', 'https://analyticsindiamag.com/10-best-python-frameworks-for-web-development/', 0),
(47, 16, '1630910380', 'A Comprehensive Guide To Redis For Data Scientists ', 'https://analyticsindiamag.com/a-comprehensive-guide-to-redis-for-data-scientists/', 0),
(48, 16, '1630910393', 'Beginner’s Guide To K-Means Clustering  ', 'https://analyticsindiamag.com/beginners-guide-to-k-means-clustering/', 0),
(49, 16, '1630910409', 'JAX Vs TensorFlow Vs PyTorch: A Comparative Analysis ', 'https://analyticsindiamag.com/jax-vs-tensorflow-vs-pytorch-a-comparative-analysis/', 0),
(50, 16, '1630910433', 'Getting Started With Object Detection Using TensorFlow', 'https://analyticsindiamag.com/object-detection-using-tensorflow/', 0),
(51, 16, '1630910454', 'Introduction to Async Programming in C#', 'https://auth0.com/blog/introduction-to-async-programming-in-csharp/', 0),
(52, 16, '1630910475', 'Introduction to the Observable Pattern in JavaScript', 'https://betterprogramming.pub/an-introduction-to-the-observable-pattern-in-javascript-3e6ae0ebc22', 0),
(53, 16, '1630910491', 'How To Make Better Queries With React Query', 'https://betterprogramming.pub/how-to-make-better-queries-with-react-query-6543d02fb711', 0),
(54, 16, '1630910513', 'OOP vs. Functional Programming', 'https://betterprogramming.pub/oop-vs-functional-programming-which-is-better-4f0dd89b7987', 0),
(55, 16, '1630910526', 'The Abstract Factory Pattern for Beginners', 'https://betterprogramming.pub/the-abstract-factory-pattern-for-beginners-4c756c21c1b8', 0),
(56, 16, '1630910539', 'Understanding the Abstract Factory Design Patterns', 'https://betterprogramming.pub/understanding-the-abstract-method-design-patterns-bc416aaaf076', 0),
(57, 16, '1630910555', 'Upcoming improvements to Angular library distribution', 'https://blog.angular.io/upcoming-improvements-to-angular-library-distribution-76c02f782aa4', 0),
(58, 15, '1630910573', '7 Tools for Faster Frontend Development in 2022', 'https://blog.bitsrc.io/7-tools-for-faster-frontend-development-in-2022-43b6f663c607', 0),
(59, 16, '1630910593', 'Building a React Component Library', 'https://blog.bitsrc.io/building-a-react-component-library-d92a2da8eab9', 0),
(60, 16, '1630910606', 'Building Micro Frontends Using Single-SPA Framework', 'https://blog.bitsrc.io/building-microfrontends-using-single-spa-framework-94019ca2fb4d', 0),
(61, 15, '1630910650', 'Python — from A to Z', 'https://amandaiglesiasmoreno.medium.com/python-from-a-to-z-8a37e0573773', 0),
(62, 16, '1630910664', '5 TypeScript Design Patterns You Should Know', 'https://blog.bitsrc.io/design-patterns-in-typescript-e9f84de40449', 0),
(63, 16, '1630910679', 'A Modern Approach to React Routing', 'https://blog.bitsrc.io/hookrouter-a-modern-approach-to-react-routing-b6e36f7d49d9', 0),
(64, 16, '1630910692', 'Introduction to Framer Motion for React', 'https://blog.bitsrc.io/introduction-to-framer-motion-for-react-4ba5a9cabc1b', 0),
(65, 16, '1630910707', 'Create Videos and Animations with React', 'https://blog.bitsrc.io/introduction-to-remotion-create-videos-and-animations-with-react-a57083771607', 0),
(66, 16, '1630910721', 'My Favorite Microservice Design Patterns for Node.js', 'https://blog.bitsrc.io/my-favorite-microservice-design-patterns-for-node-js-fe048c635d83', 0),
(67, 16, '1630910736', 'The Headless Table Library for React', 'https://blog.bitsrc.io/react-table-the-headless-table-library-for-react-2eb8c6ac98f1', 0),
(68, 16, '1630910752', 'The Dark Side of Javascript', 'https://blog.bitsrc.io/the-dark-side-of-javascript-a-look-at-3-features-you-never-want-to-use-83b6f0b3804b', 0),
(69, 16, '1630910765', 'Using HTTPS for Local Development for React, Angular, and Node', 'https://blog.bitsrc.io/using-https-for-local-development-for-react-angular-and-node-fdfaf69693cd', 0),
(70, 16, '1630910782', 'Vorteile von HTTP2', 'https://blog.hubspot.de/marketing/http2', 0),
(71, 16, '1630910933', 'Big Data World, Part 3: Building Data Pipelines', 'https://blog.jetbrains.com/blog/2021/05/20/big-data-world-part-3-building-data-pipelines/', 0),
(72, 16, '1630910954', 'PhpStorm 2021.2 Extract Method Refactoring Reworked', 'https://blog.jetbrains.com/phpstorm/2021/06/phpstorm-2021-2-eap-2/', 0),
(73, 16, '1630910967', 'Build a full-stack React app with zero configuration', 'https://blog.logrocket.com/build-a-full-stack-react-app-with-zero-configuration/', 0),
(74, 16, '1630910979', 'Building a splash screen in React Native', 'https://blog.logrocket.com/building-a-splash-screen-in-react-native/', 0),
(75, 16, '1630911006', 'Building an application with React and Nx', 'https://blog.logrocket.com/building-an-application-with-react-and-nx/', 0),
(76, 16, '1630911018', 'Building an animated loader in React Native', 'https://blog.logrocket.com/building-animated-loader-react-native/', 0),
(77, 16, '1630927155', 'Building extensible PHP apps with Symfony DI', 'https://blog.logrocket.com/building-extensible-php-apps-with-symfony-di/', 0),
(78, 16, '1630911048', 'Code splitting in React', 'https://blog.logrocket.com/code-splitting-in-react-an-overview/', 0),
(79, 16, '1630911060', 'Comparing React Native UI libraries', 'https://blog.logrocket.com/comparing-react-native-ui-libraries/', 0),
(80, 16, '1630911073', 'Using Dexie.js in React apps for offline data storage', 'https://blog.logrocket.com/dexie-js-indexeddb-react-apps-offline-data-storage/', 0),
(81, 16, '1630911085', 'Generating and integrating OpenAPI services in a React app', 'https://blog.logrocket.com/generating-integrating-openapi-services-react/', 0),
(82, 16, '1630911097', 'Getting started with Budibase', 'https://blog.logrocket.com/getting-started-with-budibase/', 0),
(83, 16, '1630911113', 'Gridsome vs. Nuxt.js', 'https://blog.logrocket.com/gridsome-vs-nuxt-js-comparison-and-tutorial-with-examples/', 0),
(84, 16, '1630911127', 'How to build a basic Flexbox layout', 'https://blog.logrocket.com/how-to-build-a-basic-flexbox-layout-a-tutorial-with-examples/', 0),
(85, 16, '1630911142', 'How to create a context menu in React', 'https://blog.logrocket.com/how-to-create-a-context-menu-in-react/', 0),
(86, 16, '1630911155', 'How to create NFTs with JavaScript', 'https://blog.logrocket.com/how-to-create-nfts-with-javascript/', 0),
(87, 16, '1630911169', 'How to debug Node.js apps in Visual Studio Code', 'https://blog.logrocket.com/how-to-debug-node-js-apps-in-visual-studio-code/', 0),
(88, 16, '1630911186', 'How to develop cross-platform desktop apps with JavaScript and Go', 'https://blog.logrocket.com/how-to-develop-cross-platform-desktop-apps-with-javascript-and-go/', 0),
(89, 16, '1630911197', 'How to run a Node.js server with Nginx', 'https://blog.logrocket.com/how-to-run-a-node-js-server-with-nginx/', 0),
(90, 16, '1630911209', 'How to use Bulma CSS with React', 'https://blog.logrocket.com/how-to-use-bulma-css-with-react/', 0),
(91, 16, '1630911220', 'How to use TypeScript with React 18 alpha', 'https://blog.logrocket.com/how-to-use-typescript-with-react-18-alpha/', 0),
(92, 16, '1630911231', 'Implementing authentication in Next.js with Firebase', 'https://blog.logrocket.com/implementing-authentication-in-next-js-with-firebase/', 0),
(93, 16, '1630911243', 'JavaScript iterators and generators: A complete guide', 'https://blog.logrocket.com/javascript-iterators-and-generators-a-complete-guide/', 0),
(94, 16, '1630911258', 'Simplify GraphQL requests with React Query, GraphQL Code Generator, and TypeScript', 'https://blog.logrocket.com/making-graphql-requests-easy-with-react-typescript-and-react-query/', 0),
(95, 16, '1630911270', 'The modern guide to React state patterns', 'https://blog.logrocket.com/modern-guide-react-state-patterns/', 0),
(96, 16, '1630911354', 'Node.js best practices and performance analytics in 2021', 'https://blog.logrocket.com/node-js-best-practices-and-performance-analytics-in-2021/', 0),
(97, 16, '1630911368', 'Node.js, Express.js, and MySQL', 'https://blog.logrocket.com/node-js-express-js-mysql-rest-api-example/', 0),
(98, 16, '1630911380', 'Optimize React apps using a multi-layered structure', 'https://blog.logrocket.com/optimize-react-apps-using-a-multi-layered-structure/', 0),
(99, 16, '1630911394', 'Parsing HTML in Node.js with Cheerio', 'https://blog.logrocket.com/parsing-html-nodejs-cheerio/', 0),
(100, 16, '1630911407', 'Top React boilerplates for 2021 ', 'https://blog.logrocket.com/react-boilerplates-for-2021/', 0),
(101, 16, '1630911420', 'Hands-on with React Native for Web', 'https://blog.logrocket.com/react-native-web-complete-tutorial/', 0),
(102, 16, '1630911469', 'Refactoring cascading conditionals in favor of readability', 'https://blog.logrocket.com/refactoring-cascading-conditionals-favor-readability/', 0),
(103, 16, '1630911485', 'Simplify React state management with Hookstate', 'https://blog.logrocket.com/simplify-react-state-management-with-hookstate/', 0),
(104, 16, '1630911541', 'SOLID principles: Single responsibility in JavaScript frameworks', 'https://blog.logrocket.com/solid-principles-single-responsibility-in-javascript-frameworks/', 0),
(105, 16, '1630911553', 'Tips for transpiling code from PHP 8.0 down to 7.1', 'https://blog.logrocket.com/tips-transpiling-code-from-php-8-0-to-7-1/', 0),
(106, 16, '1630911565', 'Top 10 React Grid components and libraries for 2021', 'https://blog.logrocket.com/top-10-react-grid-components-and-libraries-for-2021/', 0),
(107, 16, '1630911577', 'Top 5 TypeScript dependency injection containers', 'https://blog.logrocket.com/top-five-typescript-dependency-injection-containers/', 0),
(108, 16, '1630911589', 'Top React toast libraries compared', 'https://blog.logrocket.com/top-react-toast-libraries-compared/', 0),
(109, 16, '1630911601', 'Guide to unit testing in React Native', 'https://blog.logrocket.com/unit-testing-react-native/', 0),
(110, 16, '1630911614', 'Upgrade your CSS layouts with Atomic Layout ', 'https://blog.logrocket.com/upgrade-your-css-layouts-with-atomic-layout/', 0),
(111, 16, '1630911628', 'useState vs. useRef: Similarities, differences, and use cases', 'https://blog.logrocket.com/usestate-vs-useref/', 0),
(112, 16, '1630912443', 'Using a headless CMS with React', 'https://blog.logrocket.com/using-a-headless-cms-with-react/', 0),
(113, 16, '1630912456', 'Using TypeScript with React Native', 'https://blog.logrocket.com/using-typescript-with-react-native/', 0),
(114, 16, '1630912468', 'Vue Native vs. React Native', 'https://blog.logrocket.com/vue-native-vs-react-native/', 0),
(115, 16, '1630912483', 'Why use Redux', 'https://blog.logrocket.com/why-use-redux-reasons-with-clear-examples-d21bffd5835/', 0),
(116, 16, '1630912494', 'Why you should use Tailwind CSS with React Native', 'https://blog.logrocket.com/why-you-should-use-tailwind-css-with-react-native/', 0),
(117, 16, '1630912507', 'The noob’s guide to useState', 'https://blog.logrocket.com/noobs-guide-to-usestate/', 0),
(118, 16, '1630912524', 'Introducing WebContainers: Run Node.js natively in your browser', 'https://blog.stackblitz.com/posts/introducing-webcontainers/', 0),
(119, 16, '1630912537', 'Tailwind UI: Now with React + Vue support', 'https://blog.tailwindcss.com/tailwind-ui-now-with-react-and-vue-support', 0),
(120, 16, '1630912551', 'Kubernetes is so Simple You Can Explore it with Curl', 'https://blog.tilt.dev/2021/03/18/kubernetes-is-so-simple.html', 0),
(121, 15, '1630912566', 'Dark Pattern: Wie wir im Netz manipuliert werden ', 'https://blog.wdr.de/digitalistan/dark-pattern-wie-wir-im-netz-manipuliert-werden/', 0),
(122, 15, '1630912581', 'The modern packager’s security nightmare', 'https://blogs.gentoo.org/mgorny/2021/02/19/the-modern-packagers-security-nightmare/', 0),
(123, 16, '1630912600', 'Getting started with Vue', 'https://channel9.msdn.com/Series/Beginners-Series-to-Vuejs/Getting-started-with-Vue-1-of-16--Beginners-Series-to-Vuejs', 0),
(124, 16, '1630912622', 'Memory Anti-Patterns in C#', 'https://medium.com/criteo-engineering/memory-anti-patterns-in-c-7bb613d55cf0', 0),
(125, 16, '1630912638', 'React Redux Tutorial for Beginners: Simply Explained (2020) ', 'https://chriscourses.com/blog/redux', 0),
(126, 16, '1630912654', 'AngularJs Vs. ReactJs: Which Is The Best Choice in 2021', 'https://codeburst.io/angularjs-vs-nodejs-vs-reactjs-which-is-the-best-choice-in-2021-129b54f9768e', 0),
(127, 16, '1630912666', 'Super-fast PHP MySQL Database Class', 'https://codeshack.io/super-fast-php-mysql-database-class/', 0),
(128, 16, '1630912679', 'Laravel 8 Authentication Tutorial example', 'https://codingtracker.blogspot.com/2021/05/hi-dev-in-this-blog-i-will-learn-you.html', 0),
(129, 16, '1630912701', '5 Python projects for absolute beginners to learn programming', 'https://content.techgig.com/5-python-projects-for-absolute-beginners-to-learn-programming/articleshow/84584452.cms', 0),
(130, 16, '1630912712', 'Adding Shadows to SVG Icons With CSS and SVG Filters ', 'https://css-tricks.com/adding-shadows-to-svg-icons-with-css-and-svg-filters/', 0),
(131, 16, '1630912723', 'Code blocks, but better ', 'https://css-tricks.com/code-blocks-but-better/', 0),
(132, 16, '1630913020', 'Creating Custom Form Controls with ElementInternals ', 'https://css-tricks.com/creating-custom-form-controls-with-elementinternals/', 0),
(133, 16, '1630913037', 'Detect Unused Classes HTML ', 'https://css-tricks.com/detect-unused-classes-in-html/', 0),
(134, 16, '1630913056', 'Fixing a Bug in Low-Resolution Mode ', 'https://css-tricks.com/fixing-a-bug-in-low-resolution-mode/', 0),
(135, 16, '1630913066', 'Front-End Testing is For Everyone ', 'https://css-tricks.com/front-end-testing-is-for-everyone/', 0),
(136, 16, '1630913077', 'How to Add a Double Border to SVG Shapes ', 'https://css-tricks.com/how-to-add-a-double-border-to-svg-shapes/', 0),
(137, 16, '1630913087', 'Interactive Web Components Are Easier Than You Think', 'https://css-tricks.com/interactive-web-components-are-easier-than-you-think/', 0),
(138, 16, '1630913105', 'Links on React and JavaScript ', 'https://css-tricks.com/links-on-react-and-javascript/', 0),
(139, 16, '1630913115', 'Positioning Overlay Content with CSS Grid ', 'https://css-tricks.com/positioning-overlay-content-with-css-grid/', 0),
(140, 16, '1630913128', 'Principles for user-centered front-end development ', 'https://css-tricks.com/principles-for-user-centered-front-end-development/', 0),
(141, 16, '1630913139', 'Scrollbar Reflowing ', 'https://css-tricks.com/scrollbar-reflowing/', 0),
(142, 16, '1630913154', 'The ping attribute on anchor links ', 'https://css-tricks.com/the-ping-attribute-on-anchor-links/', 0),
(143, 16, '1630913163', 'Use CSS Variables instead of React Context ', 'https://css-tricks.com/use-css-variables-instead-of-react-context/', 0),
(144, 16, '1630913178', 'Using the outline Property as a Collapsable Border ', 'https://css-tricks.com/using-the-outline-property-as-a-collapsable-border/', 0),
(145, 16, '1630913189', 'VS Code Extensions for HTML ', 'https://css-tricks.com/vs-code-extensions-for-html/', 0),
(146, 16, '1630913203', 'Top Technologies for Javascript Fullstack Developers in 2021', 'https://cult.honeypot.io/reads/technology-javascript-fullstack-developers/', 0),
(147, 13, '1630913218', 'My startup failed. Then I found out I was unemployable.', 'https://davesullivan.is/my_startup_failed_then_i_found_out_i_was_unemployable.html', 0),
(148, 16, '1630913230', 'React authentication, simplified', 'https://davidwalsh.name/react-authentication-2', 0),
(149, 16, '1630913241', 'React custom hooks : A simple explanation', 'https://dev.to/_ali_/react-custom-hooks-a-simple-explanation-bpj', 0),
(150, 16, '1630913252', 'Pipeline Pattern in Laravel ', 'https://dev.to/abrardev99/pipeline-pattern-in-laravel-278p', 0),
(151, 16, '1630913267', 'How creating CSS Art can make you a better developer ', 'https://dev.to/andrewbaisden/how-creating-css-art-can-make-you-a-better-developer-4cd5', 0),
(152, 16, '1630913278', 'Memoizing async functions in Javascript ', 'https://dev.to/anishkumar/memoizing-fetch-api-calls-in-javascript-1d16', 0),
(153, 16, '1630913291', 'JavaScript Cheatsheet from beginners to advance', 'https://dev.to/anmolraj/javascript-cheatsheet-for-beginners-to-advance-4en4', 0),
(154, 16, '1630913303', 'Essential Concepts in JS ', 'https://dev.to/aritik/essential-concepts-in-js-4bbj', 0),
(155, 16, '1630913314', 'Use Vue to create a SPA without any Node modules ', 'https://dev.to/arswaw/create-a-lightweight-componentized-spa-without-node-569j', 0),
(156, 16, '1630913326', 'Logging vs Tracing: Why Logs Aren’t Enough to Debug Your Microservices ', 'https://dev.to/aspecto/logging-vs-tracing-why-logs-aren-t-enough-to-debug-your-microservices-4jgi', 0),
(157, 16, '1630913339', 'Building and Managing your Cloud Backend with Amplify Admin UI ', 'https://dev.to/aws/building-and-managing-your-cloud-backend-with-amplify-admin-ui-29k', 0),
(158, 16, '1630913350', 'Introduction React-Redux using Hooks ', 'https://dev.to/bangash1996/introduction-react-redux-using-hooks-useselector-usedispatch-26ch', 0),
(159, 16, '1630913361', 'All flavors of PHP 8 getters ', 'https://dev.to/bdelespierre/all-flavors-of-php-8-getters-51no', 0),
(160, 16, '1630913382', 'Why you need to use React-Query in your React Native project ', 'https://dev.to/benjamindaniel/why-you-need-to-use-react-query-in-your-react-react-native-project-2oog', 0),
(161, 16, '1630913393', 'How to type React props as a pro in TypeScript', 'https://dev.to/captainyossarian/how-to-type-react-props-as-a-pro-2df2', 0),
(162, 16, '1630913403', 'Basic Concepts of Node.js ', 'https://dev.to/cassiocappellari/basic-concepts-of-node-js-pch', 0),
(163, 16, '1630913417', 'Create a Netflix clone from Scratch: JavaScript PHP + MySQL ', 'https://dev.to/cglikpo/create-a-netflix-clone-from-scratch-javascript-php-mysql-kpl', 0),
(164, 16, '1630913428', 'Getting Started with NodeJS ', 'https://dev.to/cglikpo/getting-started-with-nodejs-130h', 0),
(165, 16, '1630913438', 'Getting Started with CSS Animations ', 'https://dev.to/codesphere/getting-started-with-css-animations-402h', 0),
(166, 16, '1630913448', 'Uploading Files to IPFS from a Web Application ', 'https://dev.to/dabit3/uploading-files-to-ipfs-from-a-web-application-50a', 0),
(167, 16, '1630913463', 'A magical way to fetch data in React ', 'https://dev.to/dhaiwat10/a-magical-way-to-fetch-data-in-react-52m6', 0),
(168, 16, '1630913475', 'React - async image loading ', 'https://dev.to/diraskreact/react-async-image-loading-lka', 0),
(169, 16, '1630913488', 'How To Structure a Massive Vuex Store for a Production App ', 'https://dev.to/domagojvidovic/how-to-structure-a-massive-vuex-store-for-a-production-app-97a', 0),
(170, 16, '1630913555', 'How to See Which Branch Your Teammate is on in IntelliJ ', 'https://dev.to/gitlive/how-to-see-which-branch-your-teammate-is-on-in-intellij-5aip', 0),
(171, 16, '1630913569', 'ML Fundamentals in Javascript ', 'https://dev.to/ibmdeveloper/ml-fundamentals-in-javascript-5fm5', 0),
(172, 16, '1630913583', 'Create an animated dev.to profile pic with SVG, CSS and JS', 'https://dev.to/inhuofficial/did-my-avatar-catch-your-attention-how-i-hacked-it-together-5gfd', 0),
(173, 16, '1630913594', 'Top 5 Best Resources To Learn Javascript', 'https://dev.to/innocentcoder/top-5-best-resources-to-learn-javascript-e3p', 0),
(174, 16, '1630913606', 'Creating Directionally Lit 3D Buttons with CSS ', 'https://dev.to/jh3y/creating-directionally-lit-3d-buttons-with-css-2jc2', 0),
(175, 16, '1630913616', 'Solid Design Principles ', 'https://dev.to/kalashin1/solid-design-principles-5621', 0),
(176, 16, '1630913626', '5 Ways to Write Functions in JavaScript ', 'https://dev.to/koladev/5-ways-to-write-functions-in-javascript-17d5', 0),
(177, 16, '1630913640', 'Boilerplates for websites app building ', 'https://dev.to/kritika27/boilerplates-for-websites-app-building-2n0m', 0),
(178, 16, '1630913662', 'FullStack - How to create a working blogging website with pure HTML, CSS and JS in 2021', 'https://dev.to/kunaal438/fullstack-how-to-create-a-working-blogging-website-with-pure-html-css-and-js-in-2021-9di', 0),
(179, 16, '1630913678', 'How To Make Fully Responsive Modern Portfolio Using Pure HTML, CSS And JS. ', 'https://dev.to/kunaal438/how-to-make-fully-responsive-modern-portfolio-using-pure-html-css-and-js-1p65', 0),
(180, 16, '1630913700', 'How to create beautiful confetti animations with tsParticles ', 'https://dev.to/matteobruni/how-to-create-beautiful-confetti-animations-with-tsparticles-193', 0),
(181, 16, '1630913717', 'Rest vs GraphQL', 'https://dev.to/mayank0508/rest-v-s-graphql-5bln', 0),
(182, 16, '1630913728', 'Debug Why React', 'https://dev.to/mokkapps/debug-why-react-re-renders-a-component-3i8e', 0),
(183, 16, '1630913740', 'Package.json File explained', 'https://dev.to/naveenchandar/package-json-file-explained-b94', 0),
(184, 16, '1630913750', 'Why you might not want to use TDD', 'https://dev.to/olaqnysz/why-you-might-not-want-to-use-tdd-26jf', 0),
(185, 16, '1630913766', 'How to make realtime APIs with NodeJS and ReactJS using Socket.io ', 'https://dev.to/omardiaa48/how-to-make-realtime-apis-with-nodejs-and-reactjs-using-socket-io-6ja', 0),
(186, 16, '1630913776', '5 tools to automate your development ', 'https://dev.to/pgarzina/5-tools-to-automate-your-development-3m', 0),
(187, 16, '1630913788', 'Improving your web performance ', 'https://dev.to/producthackers/improving-your-web-performance-ki1', 0),
(188, 16, '1630913800', 'What a React developer needs to know in 2021 ', 'https://dev.to/ra1nbow1/what-a-react-developer-needs-to-know-in-2021-3agj', 0),
(189, 16, '1630913817', 'Build a Slideshow Component with ReactJS ', 'https://dev.to/raymag/build-a-slideshow-component-with-reactjs-6ec', 0),
(190, 16, '1630913829', 'Create React App without create-react-app', 'https://dev.to/riddhiagrawal001/create-react-app-without-create-react-app-2lgd', 0),
(191, 16, '1630913841', 'Login & Registration Form Using HTML & CSS & JS', 'https://dev.to/robsonmuniz16/login-registration-form-using-html-css-js-5e1j', 0),
(192, 16, '1630913853', 'How to Integrate Webcam using JavaScript ', 'https://dev.to/stackfindover/how-to-integrate-webcam-using-javascript-3fji', 0),
(193, 16, '1630913872', 'What is PWA Progressive Web App', 'https://dev.to/sudhirdontha/pwa-what-is-pwa-progressive-web-app-2kmc', 0),
(194, 16, '1630913882', 'CSS Link Style', 'https://dev.to/suprabhasupi/css-link-style-2nh2', 0),
(195, 16, '1630913896', 'Design Patterns Prototype ', 'https://dev.to/tamerlang/design-patterns-prototype-14jg', 0),
(196, 16, '1630913909', 'GraphQL vs REST', 'https://dev.to/tbaveja/graphql-v-s-rest-conclusion-2mfk', 0),
(197, 16, '1630914093', 'Why and how to manage state for Angular Reactive Forms ', 'https://dev.to/this-is-angular/why-and-how-to-manage-state-for-angular-reactive-forms-25fn', 0),
(198, 16, '1630914105', 'Node.js CRUD Operation with MySQL example ', 'https://dev.to/tienbku/node-js-crud-operation-with-mysql-example-1gme', 0),
(199, 16, '1630914124', 'Animate an object on-scroll ', 'https://dev.to/vicible2/animate-an-object-on-scroll-acl', 0),
(200, 16, '1630914133', 'Docker Cheatsheet ', 'https://dev.to/vishnuchilamakuru/docker-cheatsheet-39fa', 0),
(201, 16, '1630914143', 'Design Patterns in JavaScript ', 'https://dev.to/zeeshanhshaheen/design-patterns-in-javascript-1pgm', 0),
(202, 15, '1630914153', 'Python in Visual Studio Code', 'https://devblogs.microsoft.com/python/python-in-visual-studio-code-july-2021-release/', 0),
(203, 15, '1630914162', 'Announcing TypeScript 4.3 RC', 'https://devblogs.microsoft.com/typescript/announcing-typescript-4-3-rc/', 0),
(204, 16, '1630914176', 'DevTools architecture refresh: migrating DevTools to TypeScript', 'https://developer.chrome.com/blog/migrating-to-typescript/', 0),
(205, 15, '1630914185', 'New in Chrome 90', 'https://developer.chrome.com/blog/new-in-chrome-90/', 0),
(206, 16, '1630914193', 'Build a Secure NestJS Back End for Your React Application ', 'https://developer.okta.com/blog/2021/03/15/nestjs-react', 0),
(207, 14, '1630914204', 'Installing Rocky Linux', 'https://docs.rockylinux.org/guides/rocky-8-installation/', 0),
(208, 16, '1630914216', 'AngularJS Vs. ReactJS Vs. VueJS: A Detailed Comparison', 'https://dzone.com/articles/angularjs-vs-react-js-vs-vue-js-a-detailed-compari', 0),
(209, 16, '1630914228', 'How to Set up Cypress and Typescript End-to-End Automation Testing Framework From Scratch', 'https://dzone.com/articles/cypress-typescript-end-to-end-automation-testing-from-scratch', 0),
(210, 16, '1630914237', 'jQuery vs Vue.js', 'https://dzone.com/articles/jquery-vs-vuejs', 0),
(211, 15, '1630914245', 'Top Skills You Need as a JavaScript Developer', 'https://dzone.com/articles/top-skills-you-need-as-a-javascript-developer', 0),
(212, 16, '1630914254', 'Void Methods Considered Anti-Pattern', 'https://dzone.com/articles/void-methods-considered-anti-pattern', 0),
(213, 15, '1630914291', 'What is New in Selenium 4', 'https://dzone.com/articles/what-is-new-in-selenium-4', 0),
(214, 16, '1630914308', 'Advanced TypeScript Fundamentals', 'https://egghead.io/courses/advanced-typescript-fundamentals-579c174f', 0),
(215, 16, '1630914320', 'Continuous Integration and Deployment for Machine Learning Online Serving and Models ', 'https://eng.uber.com/continuous-integration-deployment-ml/', 0),
(216, 15, '1630914329', 'Containerizing Apache Hadoop Infrastructure at Uber ', 'https://eng.uber.com/hadoop-container-blog/', 0),
(217, 15, '1630914343', 'Really Advanced Typescript Types', 'https://engineering.tableau.com/really-advanced-typescript-types-c590eee59a12', 0),
(218, 14, '1630914362', 'expressjs Installing', 'https://expressjs.com/en/starter/installing.html', 0),
(219, 15, '1630914373', 'Work with GitHub Actions in your terminal with GitHub CLI ', 'https://github.blog/2021-04-15-work-with-github-actions-in-your-terminal-with-github-cli/', 0),
(220, 15, '1630914384', 'New GitHub Themes for VS Code', 'https://github.blog/changelog/2021-04-14-new-github-themes-for-vs-code/', 0),
(221, 16, '1630914405', 'Weather App React Tutorial', 'https://github.com/eamonnboyle/weather-app-react-tutorial', 0),
(222, 16, '1630914422', 'Design Patterns in C#', 'https://github.com/marciosouzajunior/DesignPatterns', 0),
(223, 16, '1630914437', 'vue meteor demo', 'https://github.com/meteor-vue/vue-meteor-demo', 0),
(224, 16, '1630914464', 'Opyrator turn your Python functions into production-ready microservices.', 'https://github.com/ml-tooling/opyrator', 0),
(225, 16, '1630914478', 'A tetris-clone for braille display users.', 'https://github.com/mlang/betris', 0),
(226, 16, '1630914490', 'A javascript library to run SQLite on the web. ', 'https://github.com/sql-js/sql.js/', 0),
(227, 16, '1630914511', 'Photo-Realistic Single Image Super-Resolution Using a Generative Adversarial Network ', 'https://github.com/tensorlayer/srgan', 0),
(228, 16, '1630914527', 'SkinDeep ', 'https://github.com/vijishmadhavan/SkinDeep', 0),
(229, 13, '1630914540', 'My simple Github project went Viral', 'https://gourav.io/blog/my-simple-github-project-went-viral', 0),
(230, 16, '1630914566', 'JavaScript with Gridsome.', 'https://gridsome.org/docs/assets-scripts/', 0),
(231, 15, '1630914579', 'Improving Firefox stability on Linux', 'https://hacks.mozilla.org/2021/05/improving-firefox-stability-on-linux/', 0),
(232, 15, '1630914589', 'Implementing Private Fields for JavaScript', 'https://hacks.mozilla.org/2021/06/implementing-private-fields-for-javascript/', 0),
(233, 15, '1630914600', 'Git-Notes Your CI Process', 'https://itnext.io/git-notes-your-ci-process-46b2fd5ac52', 0),
(234, 16, '1630914627', 'In JS Functions, The Last Return Wins', 'https://jakearchibald.com/2021/last-return-wins/', 0),
(235, 16, '1630914646', 'The Simplest Intro to Currying in JavaScript', 'https://javascript.plainenglish.io/the-simplest-intro-to-currying-in-javascript-c36b892f2597', 0),
(236, 16, '1630914668', 'What is HTTP2', 'https://kinsta.com/learn/what-is-http2/', 0),
(237, 15, '1630914683', 'http2smugl: HTTP2 request smuggling security testing tool ', 'https://lab.wallarm.com/http2smugl-http2-request-smuggling-security-testing-tool/', 0),
(238, 15, '1630914699', 'Laravel Octane v1.0 is Here', 'https://laravel-news.com/laravel-octane-1-0-0', 0),
(239, 16, '1630914715', 'Design Patterns: Top 5 Techniques for Implementing Fault Tolerance in Distributed Systems', 'https://levelup.gitconnected.com/design-patterns-top-5-techniques-for-implementing-fault-tolerance-in-distributed-systems-81bef4408c3b', 0),
(240, 16, '1630914725', 'How to Build a Simple CLI Using TypeScript and Factory Design Pattern', 'https://levelup.gitconnected.com/how-to-build-a-simple-cli-using-typescript-and-factory-design-pattern-d9c335778f14', 0),
(241, 15, '1630914735', 'Command-line programs for everyday use in Linux', 'https://linuxconfig.org/command-line-programs-for-everyday-use-in-linux', 0),
(242, 16, '1630914744', 'Building an SDK with PHP: Part 1', 'https://madewithlove.com/blog/software-engineering/building-an-sdk-with-php-part-1/', 0),
(243, 16, '1630914753', 'Use console.log', 'https://markodenic.com/use-console-log-like-a-pro/', 0),
(244, 16, '1630914762', 'Building Vue.js Applications Without webpack', 'https://markus.oberlehner.net/blog/goodbye-webpack-building-vue-applications-without-webpack/', 0),
(245, 13, '1630914773', 'Patterns of Legacy Displacement', 'https://martinfowler.com/articles/patterns-legacy-displacement/', 0),
(246, 13, '1630927106', 'How To Create An Advanced PHP Rest API', 'https://davisonpro.medium.com/how-to-create-an-advanced-php-rest-api-c7afe6dd2694', 0),
(247, 13, '1630914801', 'Motoko, a Programming Language Designed for the Internet Computer, Is Now Open Source', 'https://medium.com/dfinity/motoko-a-programming-language-designed-for-the-internet-computer-is-now-open-source-8d85da4db735', 0),
(248, 16, '1630914816', 'React Tutorial — Build a Weather App from Scratch — Part 1', 'https://medium.com/swlh/react-tutorial-build-a-weather-app-from-scratch-part-1-e2f65cd3d112', 0),
(249, 16, '1630914828', 'The Node.js Application Maintainer Guide', 'https://nodesource.com/blog/the-Node.js-application-maintainer-guide', 0),
(250, 16, '1630914837', 'Advance your awk skills with two easy tutorials', 'https://opensource.com/article/19/10/advanced-awk', 0),
(251, 16, '1630914847', 'Read and write files with Bash', 'https://opensource.com/article/21/3/input-output-bash', 0),
(252, 16, '1631018135', 'Build a to-do list app in React with hooks', 'https://opensource.com/article/21/3/react-app-hooks', 0),
(253, 16, '1630914865', 'A practical guide to using the git stash command', 'https://opensource.com/article/21/4/git-stash', 0),
(254, 16, '1630914874', 'Find what changed in a Git commit', 'https://opensource.com/article/21/4/git-whatchanged', 0),
(255, 14, '1630914884', '3 essential Linux cheat sheets for productivity', 'https://opensource.com/article/21/4/linux-cheat-sheets', 0),
(256, 16, '1631018122', '4 steps to set up global modals in React', 'https://opensource.com/article/21/5/global-modals-react', 0),
(257, 15, '1630914905', 'Pen testing with Linux security tools', 'https://opensource.com/article/21/5/linux-security-tools', 0),
(258, 15, '1630914933', 'Tune your MySQL queries like a pro', 'https://opensource.com/article/21/5/mysql-query-tuning', 0),
(259, 15, '1630914943', 'What is serverless with Java', 'https://opensource.com/article/21/5/what-serverless-java', 0),
(260, 16, '1630914954', 'Building a simple slideshow plugin with React', 'https://piotrf.pl/wrote/building-a-simple-slideshow-with-react-js', 0),
(261, 14, '1630914969', 'React AutoSuggestion Demo', 'https://react-autosuggestion-app.netlify.app/', 0),
(262, 1, '1630914991', 'fun JavaScript game programming library & environment', 'https://replit.com/site/kaboom', 0),
(263, 16, '1630915002', 'Joining CSV and JSON data with an in-memory SQLite database', 'https://simonwillison.net/2021/Jun/19/sqlite-utils-memory/', 0),
(264, 16, '1630915012', '5 ways to prevent code injection in JavaScript and Node.js', 'https://snyk.io/blog/5-ways-to-prevent-code-injection-in-javascript-and-node-js/', 0),
(265, 13, '1630915022', 'Why I Prefer Makefiles Over package.json Scripts ', 'https://spin.atomicobject.com/2021/03/22/makefiles-vs-package-json-scripts/', 0),
(266, 15, '1630915031', 'Use the DuckDuckGo Extension to Block FLoC, Google’s New Tracking Method in Chrome', 'https://spreadprivacy.com/block-floc-with-duckduckgo/', 0),
(267, 16, '1630915042', 'Level Up: Creative coding with p5.js – part 1', 'https://stackoverflow.blog/2021/03/16/level-up-creative-coding-with-p5-js-part-1/', 0),
(268, 13, '1630915052', 'Using low-code tools to iterate products faster', 'https://stackoverflow.blog/2021/06/09/using-low-code-tools-to-iterate-products-faster/', 0),
(269, 13, '1630915073', 'We dont need runtime type checks', 'https://stitcher.io/blog/we-dont-need-runtime-type-checks', 0),
(270, 13, '1630915091', 'Die Geschichte der Programmiersprache, ohne die auch heute (fast) nichts geht ', 'https://t3n.de/news/c-entstehungsgeschichte-programmiersprace-python-1388046/', 0),
(271, 15, '1630915110', 'A deep learning technique to solve Rubiks cube and other problems step-by-step', 'https://techxplore.com/news/2021-02-deep-technique-rubik-cube-problems.html', 0),
(272, 16, '1630915122', 'Subscriptions and Live Queries - Real Time with GraphQL', 'https://the-guild.dev/blog/subscriptions-and-live-queries-real-time-with-graphql', 0),
(273, 15, '1630915138', 'CI vs. CD Explained by Emoji Continuous Integration', 'https://thenewstack.io/ci-vs-cd-explained-by-emoji-part-1-continuous-integration/', 0),
(274, 1, '1630915149', 'Dont mistake OpenAI Codex for a programmer ', 'https://thenextweb.com/news/dont-mistake-openai-codex-for-a-programmer-syndication', 0),
(275, 13, '1630915160', 'Object-oriented programming is dead', 'https://thenextweb.com/news/object-oriented-programming-is-dead-syndication', 0),
(276, 13, '1630915183', 'High quality audio makes you sound smarter', 'https://tips.ariyh.com/p/good-sound-quality-smarter', 0),
(277, 15, '1630915208', '17 Clustering Algorithms Used In Data Science and Mining', 'https://towardsdatascience.com/17-clustering-algorithms-used-in-data-science-mining-49dbfa5bf69a', 0),
(278, 15, '1630915218', '3 Tools to Track and Visualize the Execution of your Python Code', 'https://towardsdatascience.com/3-tools-to-track-and-visualize-the-execution-of-your-python-code-666a153e435e', 0),
(279, 15, '1630915228', 'A Complete Deep Learning Portfolio Project', 'https://towardsdatascience.com/a-complete-deep-learning-portfolio-project-9c5dc7f3f2ef', 0),
(280, 15, '1630915236', 'Autoencoder For Denoising Images', 'https://towardsdatascience.com/autoencoder-for-denoising-images-7d63a0831bfd', 0),
(281, 15, '1630915246', 'Machine Learning Model Dashboard', 'https://towardsdatascience.com/machine-learning-model-dashboard-4544daa50848', 0),
(282, 15, '1630915255', 'Master Machine Learning: Simple Linear Regression From Scratch With Python', 'https://towardsdatascience.com/master-machine-learning-simple-linear-regression-from-scratch-with-python-1526487c5964', 0),
(283, 16, '1630915265', 'Trigonometry in CSS and JavaScript: Introduction to Trigonometry ', 'https://tympanus.net/codrops/2021/06/01/trigonometry-in-css-and-javascript-introduction-to-trigonometry/', 0),
(284, 14, '1630915277', 'VUE 2.x Syntax', 'https://v3.vuejs.org/guide/migration/events-api.html#_2-x-syntax', 0),
(285, 15, '1630915408', '4 reasons to learn machine learning with JavaScript', 'https://venturebeat.com/2021/04/23/4-reasons-to-learn-machine-learning-with-javascript/', 0),
(286, 13, '1630915435', 'You Dont Need to Rebuild Your Development Docker Image on Every Code Change', 'https://vsupalov.com/rebuilding-docker-image-development/', 0),
(287, 13, '1630915451', 'Rewriting Nuxt Hacker News with Fastify, Vite and Vue 3 ', 'https://vuejsdevelopers.com/2021/03/23/nuxt-vite-fastify/', 0),
(288, 16, '1630915463', 'Learning PHP for WordPress Development: Control Flow Basics', 'https://wpshout.com/learning-php-for-wordpress-development-control-flow-basics/', 0),
(289, 13, '1630915473', 'Data Analytics for Dummies', 'https://www.analyticsinsight.net/data-analytics-for-dummies/', 0),
(290, 13, '1630915483', 'A Gentle Introduction to PyTorch Library for Deep Learning', 'https://www.analyticsvidhya.com/blog/2021/04/a-gentle-introduction-to-pytorch-library/', 0),
(291, 15, '1630915494', 'Top 8 Hidden Python Packages For Machine Learning in 2021', 'https://www.analyticsvidhya.com/blog/2021/04/top-8-hidden-python-packages-for-machine-learning-in-2021/', 0),
(292, 13, '1630915505', 'All you need to know about your first Machine Learning model – Linear Regression', 'https://www.analyticsvidhya.com/blog/2021/05/all-you-need-to-know-about-your-first-machine-learning-model-linear-regression/', 0),
(293, 13, '1630915517', 'Deep Learning for Image Super-Resolution', 'https://www.analyticsvidhya.com/blog/2021/05/deep-learning-for-image-super-resolution/', 0),
(294, 13, '1630915527', 'Develop your first Deep Learning Model in Python with Keras', 'https://www.analyticsvidhya.com/blog/2021/05/develop-your-first-deep-learning-model-in-python-with-keras/', 0),
(295, 13, '1630915541', 'Natural Language Processing Step by Step Guide', 'https://www.analyticsvidhya.com/blog/2021/05/natural-language-processing-step-by-step-guide/', 0),
(296, 13, '1630915552', 'How to Learn Mathematics For Machine Learning', 'https://www.analyticsvidhya.com/blog/2021/06/how-to-learn-mathematics-for-machine-learning-what-concepts-do-you-need-to-master-in-data-science/', 0),
(297, 13, '1630915564', 'Understanding KMeans Clustering for Data Science Beginners', 'https://www.analyticsvidhya.com/blog/2021/08/kmeans-clustering/', 0),
(298, 16, '1630915576', '10 Magical JavaScript Tips for Every Web Developer', 'https://www.codelivly.com/magical-javascript-tips-for-every-web-developer/', 0),
(299, 13, '1630915586', 'From Code Quality to Total Security', 'https://www.electronicdesign.com/technologies/embedded-revolution/article/21168142/iar-systems-from-code-quality-to-total-security', 0),
(300, 15, '1630915596', 'FreeBSD 13.0-RELEASE Release Notes', 'https://www.freebsd.org/releases/13.0R/relnotes/', 0),
(301, 16, '1630915606', '5 React Libraries Every Project Should Use in 2021', 'https://www.freecodecamp.org/news/5-react-libraries-every-project-needs/', 0),
(302, 16, '1630915962', 'Backend Web Development With Python - Full Course', 'https://www.freecodecamp.org/news/backend-web-development-with-python-full-course/', 0),
(303, 16, '1630915631', 'How to Build Accessible Vue Applications', 'https://www.freecodecamp.org/news/build-accessible-vue-applications/', 0),
(304, 16, '1630915642', 'TypeScript Game Dev Course – Build your own Arkanoid Game', 'https://www.freecodecamp.org/news/build-an-arkenoid-game-in-typescript-tutorial/', 0),
(305, 16, '1630915651', 'Build Six Quick Python Projects', 'https://www.freecodecamp.org/news/build-six-quick-python-projects/', 0),
(306, 16, '1630915660', 'How to Add Video Calling to a React Native App', 'https://www.freecodecamp.org/news/building-video-call-app-in-react-native/', 0),
(307, 16, '1630915670', 'Create a Cross-Platform Twitter Clone with Vue.js', 'https://www.freecodecamp.org/news/create-a-cross-platform-twitter-clone-with-vue-js/', 0),
(308, 16, '1630915713', 'Create a MERN Stack App with a Serverless Backend', 'https://www.freecodecamp.org/news/create-a-mern-stack-app-with-a-serverless-backend/', 0),
(309, 16, '1630915723', 'Create Pixel Effects with JavaScript and HTML Canvas', 'https://www.freecodecamp.org/news/create-pixel-effects-with-javascript-and-html-canvas/', 0),
(310, 16, '1630915732', 'How to Design an iMessage-like Chat Bubble in React Native', 'https://www.freecodecamp.org/news/design-imessage-like-chat-bubble-react-native/', 0),
(311, 16, '1630915740', 'DevOps Engineering Course for Beginners', 'https://www.freecodecamp.org/news/devops-engineering-course-for-beginners/', 0);
INSERT INTO `bookmarks` (`bookmarks_id`, `categories_id`, `bookmarks_hash`, `bookmarks_name`, `bookmarks_url`, `bookmarks_type`) VALUES
(312, 16, '1630915749', 'What is the Difference Between a Website and a Web Application', 'https://www.freecodecamp.org/news/difference-between-a-website-and-a-web-application/', 0),
(313, 16, '1630915757', 'How to Build a Discord AI Chatbot that Talks Like Your Favorite Character', 'https://www.freecodecamp.org/news/discord-ai-chatbot/', 0),
(314, 16, '1630915766', 'Game Development for Total Beginners - Free Unity Course', 'https://www.freecodecamp.org/news/game-development-for-beginners-unity-course/', 0),
(315, 16, '1630915777', 'How to Auto-Deploy Your React Apps with Cloudflare Pages', 'https://www.freecodecamp.org/news/how-to-auto-deploy-your-react-apps-with-cloudflare-pages/', 0),
(316, 16, '1630915789', 'How to Beat Coders Block – Five Tips to Help You Stay Productive', 'https://www.freecodecamp.org/news/how-to-beat-coders-block-and-stay-productive/', 0),
(317, 16, '1630915799', 'How to Build a Fully Functional Serverless App in Under Two Hours', 'https://www.freecodecamp.org/news/how-to-build-a-serverless-app/', 0),
(318, 16, '1630915808', 'How to Build A WordPress Website Locally - What You Need To Know', 'https://www.freecodecamp.org/news/how-to-build-a-wordpress-website-locally/', 0),
(319, 16, '1630915819', 'How to Build Super Mario Bros, Zelda, and Space Invaders with Kaboom.js', 'https://www.freecodecamp.org/news/how-to-build-mario-zelda-and-space-invaders-with-kaboom-js/', 0),
(320, 16, '1630915828', 'How to Create a Truly Reusable React Component from Scratch', 'https://www.freecodecamp.org/news/how-to-create-a-truly-reusable-react-component-from-scratch/', 0),
(321, 16, '1630915915', 'How to Deploy a React App to Production Using Docker and NGINX with API Proxies', 'https://www.freecodecamp.org/news/how-to-deploy-react-apps-to-production/', 0),
(322, 16, '1630915925', 'How to Deploy a React Router-Based Application to Netlify', 'https://www.freecodecamp.org/news/how-to-deploy-react-router-based-app-to-netlify/', 0),
(323, 16, '1630915943', 'How to Deploy Your freeCodeCamp Project on AWS ', 'https://www.freecodecamp.org/news/how-to-deploy-your-freecodecamp-project-on-aws/', 0),
(324, 16, '1630915980', 'How to Perform CRUD Operations using React', 'https://www.freecodecamp.org/news/how-to-perform-crud-operations-using-react/', 0),
(325, 16, '1630915992', 'JavaScript Tutorial – How to Set Up a Front End Development Project', 'https://www.freecodecamp.org/news/how-to-set-up-a-front-end-development-project/', 0),
(326, 16, '1630916003', 'How to Use OpenTelemetry to Understand Software Performance', 'https://www.freecodecamp.org/news/how-to-use-opentelemetry/', 0),
(327, 16, '1630916027', 'How to Write Cleaner React Code', 'https://www.freecodecamp.org/news/how-to-write-cleaner-react-code/', 0),
(328, 16, '1630916038', 'Why You Should Use React Components Instead of HTML', 'https://www.freecodecamp.org/news/intro-to-react-components/', 0),
(329, 16, '1630916057', 'JavaScript Async/Await Tutorial – Learn Callbacks, Promises, And Async/Await In JS By Making Ice Cream', 'https://www.freecodecamp.org/news/javascript-async-await-tutorial-learn-callbacks-promises-async-await-by-making-icecream/', 0),
(330, 16, '1630916072', 'JavaScript Execution Context and Hoisting Explained with Code Examples', 'https://www.freecodecamp.org/news/javascript-execution-context-and-hoisting/', 0),
(331, 16, '1630916083', '40 JavaScript Projects for Beginners – Easy Ideas to Get Started Coding JS', 'https://www.freecodecamp.org/news/javascript-projects-for-beginners/', 0),
(332, 16, '1630916093', 'Learn How to Create an Instagram Clone Using React in Free 12-Hour Course', 'https://www.freecodecamp.org/news/learn-how-to-create-an-instagram-clone-using-react/', 0),
(333, 16, '1630916104', 'Postman API Tutorial – How to Use Postman to Test an API', 'https://www.freecodecamp.org/news/learn-how-to-use-postman-to-test-apis/', 0),
(334, 16, '1630916115', 'Learn Next.js and Make React Development Simpler', 'https://www.freecodecamp.org/news/learn-next-js/', 0),
(335, 16, '1630916126', 'React Tutorial – Learn React and JavaScript Programming Basics with Example Code', 'https://www.freecodecamp.org/news/learn-react-basics/#', 0),
(336, 16, '1630916137', 'How to Build a Weather Application with React and React Hooks', 'https://www.freecodecamp.org/news/learn-react-by-building-a-weather-app/', 0),
(337, 16, '1630916146', 'Learn React Router', 'https://www.freecodecamp.org/news/learn-react-router/', 0),
(338, 16, '1630916158', 'Learn the FARM Stack', 'https://www.freecodecamp.org/news/learn-the-farm-stack-fastapi-reactjs-mongodb/', 0),
(339, 16, '1630916169', 'Learn the Flask Python Web Development Framework by Building an Ecommerce Platform', 'https://www.freecodecamp.org/news/learn-the-flask-python-web-framework-by-building-a-market-platform/', 0),
(340, 16, '1630916179', 'User Authentication in Node.js with Passport.js and JWT', 'https://www.freecodecamp.org/news/learn-to-implement-user-authentication-in-node-apps-using-passport-js/', 0),
(341, 16, '1630916190', 'Learn TypeScript With This Crash Course', 'https://www.freecodecamp.org/news/learn-typescript-with-this-crash-course/', 0),
(342, 16, '1630916200', 'How to Learn Web Development Using Free Resources', 'https://www.freecodecamp.org/news/learn-web-development-for-free/', 0),
(343, 16, '1630916211', 'How to Make Your React Apps Responsive with a Custom Hook', 'https://www.freecodecamp.org/news/make-react-apps-responsive/', 0),
(344, 16, '1630916229', 'How to Use Git and Git Workflows – a Practical Guide', 'https://www.freecodecamp.org/news/practical-git-and-git-workflows/', 0),
(345, 16, '1630916239', 'Programming VS Coding VS Development', 'https://www.freecodecamp.org/news/programming-coding-developement-whats-the-difference/', 0),
(346, 16, '1630916249', 'React Cheatsheet – 9 Common HTML Rendering Cases You Should Know', 'https://www.freecodecamp.org/news/react-cheatsheet-html-rendering/', 0),
(347, 16, '1630916260', 'React CRUD App Tutorial – How to Build a Book Management App in React from Scratch', 'https://www.freecodecamp.org/news/react-crud-app-how-to-create-a-book-management-app-from-scratch/', 0),
(348, 16, '1630927201', 'Complete React Cheatsheet for 2021', 'https://www.freecodecamp.org/news/react-for-beginners-cheatsheet/', 0),
(349, 16, '1630916280', 'React Props Cheatsheet: 10 Patterns You Should Know', 'https://www.freecodecamp.org/news/react-props-cheatsheet/', 0),
(350, 16, '1630916293', 'The Complete React Tutorial for 2021', 'https://www.freecodecamp.org/news/react-tutorial-build-a-project/', 0),
(351, 16, '1630916304', 'How to Use Supercharged Sorts in JavaScript', 'https://www.freecodecamp.org/news/supercharged-sorts-in-javascript/', 0),
(352, 16, '1630916314', 'Full Stack Development with Next.js and Supabase – The Complete Guide', 'https://www.freecodecamp.org/news/the-complete-guide-to-full-stack-development-with-supabas/', 0),
(353, 16, '1630916324', 'UML Diagram Course – How to Design Databases and Systems', 'https://www.freecodecamp.org/news/uml-diagrams-full-course/', 0),
(354, 16, '1630916333', 'Watch a Cornell University Database Course for Free', 'https://www.freecodecamp.org/news/watch-a-cornell-university-database-course-for-free/', 0),
(355, 16, '1630916343', 'How State Works in React – Explained with Code Examples', 'https://www.freecodecamp.org/news/what-is-state-in-react-explained-with-examples/', 0),
(356, 16, '1630916360', 'What is Trunk Based Development', 'https://www.freecodecamp.org/news/what-is-trunk-based-development/', 0),
(357, 13, '1630916375', 'StyleGAN – Style Generative Adversarial Networks', 'https://www.geeksforgeeks.org/stylegan-style-generative-adversarial-networks/', 0),
(358, 15, '1630916390', 'Testing: Akzeptanztests in der Softwareentwicklung mit Cypress ', 'https://www.heise.de/hintergrund/Testing-Akzeptanztests-in-der-Softwareentwicklung-mit-Cypress-6121283.html?seite=2', 0),
(359, 14, '1630916405', 'How to Install GoAccess Web Log Analyzer on Ubuntu 20.04', 'https://www.howtoforge.com/tutorial/ubuntu-goaccess-apache-log-analyzer/', 0),
(360, 15, '1630916418', 'Enhance Your Testing Strategy with Mind Map-Driven Testing ', 'https://www.infoq.com/articles/mindmap-driven-testing/', 0),
(361, 15, '1630916442', 'How To Spread Technical Practices Like TDD In An Organization ', 'https://www.infoq.com/articles/spread-technical-practices-organization/', 0),
(362, 15, '1630916456', 'The decline of Heroku', 'https://www.infoworld.com/article/3614210/the-decline-of-heroku.html', 0),
(363, 15, '1630916468', 'Prisma ORM for Node.js is ready for production', 'https://www.infoworld.com/article/3616602/prisma-orm-for-nodejs-is-ready-for-production.html', 0),
(364, 16, '1630916483', 'How to CRUD with Node.js and MongoDB', 'https://www.infoworld.com/article/3619533/how-to-crud-with-nodejs-and-mongodb.html', 0),
(365, 15, '1630916493', '7 tools transforming JavaScript development', 'https://www.infoworld.com/article/3619560/7-tools-transforming-javascript-development.html', 0),
(366, 15, '1630916503', 'GitHub unveils AI coding assistant for Visual Studio Code', 'https://www.infoworld.com/article/3623724/github-unveils-ai-coding-assistant-for-visual-studio-code.html', 0),
(367, 15, '1630916521', 'How to build a CMS with React and Google Sheets', 'https://www.itpro.co.uk/marketing-comms/content-management-system-cms/358703/how-to-build-a-cms-with-react-and-google', 0),
(368, 14, '1630916533', 'Code Inspections in PHP', 'https://www.jetbrains.com/help/phpstorm/code-inspections-in-php.html', 0),
(369, 13, '1630916545', 'Why My Blog is Closed-Source', 'https://www.joshwcomeau.com/blog/why-my-blog-is-closed-source/', 0),
(370, 13, '1630916557', 'Data Science Books You Should Start Reading in 2021', 'https://www.kdnuggets.com/2021/04/data-science-books-start-reading-2021.html', 0),
(371, 13, '1630916570', 'How to deploy Machine Learning/Deep Learning models to the web', 'https://www.kdnuggets.com/2021/04/deploy-machine-learning-models-to-web.html', 0),
(372, 9, '1630916584', 'Automated coronary calcium scoring using deep learning with multicenter external validation', 'https://www.nature.com/articles/s41746-021-00460-1', 0),
(373, 15, '1630916598', 'The Complete ORM for Node.js & TypeScript', 'https://www.prisma.io/blog/prisma-the-complete-orm-inw24qjeawmb', 0),
(374, 14, '1630916609', 'Prisma Client', 'https://www.prisma.io/docs/concepts/components/prisma-client', 0),
(375, 13, '1630916618', 'Data augmentation with tf.data and TensorFlow', 'https://www.pyimagesearch.com/2021/06/28/data-augmentation-with-tf-data-and-tensorflow/', 0),
(376, 13, '1630916630', 'Intro to PyTorch: Training your first neural network using PyTorch', 'https://www.pyimagesearch.com/2021/07/12/intro-to-pytorch-training-your-first-neural-network-using-pytorch/', 0),
(377, 16, '1630916639', 'PyTorch object detection with pre-trained networks', 'https://www.pyimagesearch.com/2021/08/02/pytorch-object-detection-with-pre-trained-networks/', 0),
(378, 9, '1630916658', 'Mathematician Disproves 80-Year-Old Algebra Conjecture', 'https://www.quantamagazine.org/mathematician-disproves-group-algebra-unit-conjecture-20210412/', 0),
(379, 13, '1630916670', 'Deep Learning with R and Keras: Build a Handwritten Digit Classifier in 10 Minutes', 'https://www.r-bloggers.com/2021/02/deep-learning-with-r-and-keras-build-a-handwritten-digit-classifier-in-10-minutes/', 0),
(380, 13, '1630916680', '10 Tips And Tricks For Data Scientists Vol.6', 'https://www.r-bloggers.com/2021/04/10-tips-and-tricks-for-data-scientists-vol-6/', 0),
(381, 13, '1630916690', 'Deep Neural Network in R', 'https://www.r-bloggers.com/2021/04/deep-neural-network-in-r/', 0),
(382, 9, '1630916707', 'A 20-Minute Full-Body Tabata Workout That Really Works Your Abs ', 'https://www.self.com/gallery/a-20-minute-full-body-tabata-workout-abs', 0),
(383, 15, '1630916717', 'How PHP Executes – from Source Code to Render', 'https://www.sitepoint.com/how-php-executes-from-source-code-to-render/', 0),
(384, 15, '1630916727', 'How I Built a Wheel of Fortune JavaScript Game for My Zoom Group', 'https://www.sitepoint.com/javascript-game-zoom-group/', 0),
(385, 13, '1630916736', 'React Fragments: A Simple Syntax to Improve Performance', 'https://www.sitepoint.com/react-fragments-introduction/', 0),
(386, 16, '1630916746', 'Understanding the New Reactivity System in Vue 3', 'https://www.sitepoint.com/vue-3-reactivity-system/', 0),
(387, 16, '1630916756', 'Building A Video Streaming App With Nuxt.js, Node And Express', 'https://www.smashingmagazine.com/2021/04/building-video-streaming-app-nuxtjs-node-express/', 0),
(388, 16, '1630916766', 'Vanilla JavaScript Code Snippets', 'https://www.smashingmagazine.com/2021/04/vanilla-javascript-code-snippets/', 0),
(389, 16, '1630916778', 'MySQL Substring And Substring_Index Functions With Examples', 'https://www.softwaretestinghelp.com/mysql-substring/', 0),
(390, 15, '1630916797', 'The way we teach coding is all wrong. Here is how it needs to change', 'https://www.techrepublic.com/article/the-way-we-teach-coding-is-all-wrong-heres-how-it-needs-to-change/', 0),
(391, 13, '1630916809', 'How to Install and Manage RPM Packages on Ubuntu', 'https://www.ubuntupit.com/rpm-packages-on-ubuntu-debian-system/', 0),
(392, 17, '1630916977', 'Logcat Extreme Android', 'https://play.google.com/store/apps/details?id=scd.lcex&hl=en', 0),
(393, 15, '1630917003', 'How to check your app usage stats an Android device ', 'https://www.businessinsider.com/how-to-check-app-usage-on-android', 0),
(394, 15, '1630917089', 'How your smartphone tells your story', 'https://towardsdatascience.com/andorid-activity-1ecc454c636c', 0),
(395, 15, '1630920430', 'How Will Programming look like in 2025', 'https://tomasvotruba.com/blog/2020/06/29/how-will-programming-look-like-in-2025/', 0),
(396, 17, '1630920749', 'Celluloid Linux video player A simple GTK+ frontend for mpv', 'https://github.com/celluloid-player/celluloid', 0),
(397, 16, '1630920799', 'How to find a path of a Linux command like a pro', 'https://www.cyberciti.biz/howto/finding-a-path-of-a-linux-command-like-a-pro/', 0),
(398, 13, '1630922050', 'Bootstrap without all the debt', 'https://coderwall.com/p/wixovg/bootstrap-without-all-the-debt', 0),
(399, 16, '1630923082', 'How To Unstage Files on Git', 'https://devconnected.com/how-to-unstage-files-on-git/', 0),
(400, 14, '1630923724', 'Install Jest Getting Started', 'https://jestjs.io/docs/getting-started', 0),
(401, 14, '1630923775', 'Portainer Installation', 'https://documentation.portainer.io/quickstart/', 0),
(402, 15, '1630923997', 'Hadi Hariri — http2 – What Do I Need To Know', 'http://http2demo.io/\r\n', 1),
(403, 14, '1630924403', 'My beloved PHP cheat sheet', 'https://dev.to/ericchapman/my-beloved-php-cheat-sheet-7dl', 0),
(404, 16, '1630933186', 'Machine Learning Crash Course with TensorFlow APIs', 'https://developers.google.com/machine-learning/crash-course/', 0),
(405, 14, '1630924434', 'git-restore - Restore working tree files', 'https://git-scm.com/docs/git-restore', 0),
(406, 14, '1630924452', 'Bootstrap Examples', 'https://getbootstrap.com/docs/4.0/examples/', 0),
(407, 1, '1630924465', 'Bootstrap themes', 'https://startbootstrap.com/?showAngular=false&showVue=false&showPro=false', 0),
(408, 1, '1630924493', 'BINARY CODE TRANSLATOR ', 'http://www.thematrixer.com/binary.php', 0),
(409, 1, '1630924568', 'LENOVO IdeaPad Gaming 3i', 'https://www.mediamarkt.de/de/product/_lenovo-ideapad-gaming-3i-2733016.html', 0),
(410, 17, '1630926499', 'API Builder', 'https://app.apibuilder.io/doc/', 0),
(411, 16, '1630926511', 'How To Find Exact Installation Date And Time Of Your Linux OS', 'https://ostechnix.com/find-exact-installation-date-time-linux-os/', 0),
(412, 17, '1630926554', 'LibreOffice', 'https://www.libreoffice.org/', 0),
(413, 1, '1630926579', 'YouTubes Community Guidelines', 'https://support.google.com/youtube/answer/9288567', 0),
(414, 1, '1630926602', 'LENOVO IdeaPad Gaming 3i', 'https://www.mediamarkt.de/de/product/_lenovo-ideapad-gaming-3i-2659348.html', 0),
(415, 1, '1630926615', 'Lenovo ThinkPad E15 G2 i7', 'https://www.bechtle.com/shop/lenovo-thinkpad-e15-g2-i7-16-512gb-top--4498692--p', 0),
(416, 1, '1630928346', 'Lenovo ThinkPad E15 G2 i5', 'https://www.bechtle.com/shop/lenovo-thinkpad-e15-g2-i5-16-512-gb-top--4498691--p', 0),
(417, 14, '1630926634', 'Symfony Documentation', 'https://symfony.com/doc/current/index.html', 0),
(418, 1, '1630926930', '1,000 Free Audio Books: Download Great Books for Free', 'https://www.openculture.com/freeaudiobooks', 0),
(419, 14, '1630926939', 'TypeScript - For Loop', 'https://www.tutorialspoint.com/typescript/typescript_for_loop.htm', 0),
(420, 14, '1630926951', 'CakePHP Tutorials & Examples', 'https://book.cakephp.org/3/en/tutorials-and-examples.html', 0),
(421, 14, '1630926961', 'CakePHP Debugging', 'https://book.cakephp.org/3/en/development/debugging.html', 0),
(422, 13, '1630926985', 'Blur a Video using FFmpeg’s BoxBlur Filter', 'https://ottverse.com/blur-a-video-using-ffmpeg-boxblur/', 0),
(423, 16, '1630927031', 'Java Factory Pattern Explained', 'https://howtodoinjava.com/design-patterns/creational/implementing-factory-design-pattern-in-java/', 0),
(424, 13, '1630927023', 'Factory pattern', 'https://www.ionos.com/digitalguide/websites/web-development/what-is-a-factory-method-pattern/', 0),
(425, 17, '1630927060', 'Code for making music videos using CLIP', 'https://github.com/yk/clip_music_video', 0),
(426, 17, '1630927134', 'Ubuntu Mirrors Esslingen', 'https://ftp-stud.hs-esslingen.de/Mirrors/', 0),
(427, 16, '1630927167', 'Web design in a component-driven world', 'https://web.dev/new-responsive/', 0),
(428, 1, '1630927191', 'ONLINE TEST MASTERING VON PEAK-STUDIOS', 'https://www.peak-studios.de/mastering/test-mastering/', 0),
(429, 17, '1630927219', 'Keras Deep Learning for humans', 'https://github.com/keras-team/keras', 0),
(430, 1, '1630927237', 'Abfall‐ABC', 'https://www.stuttgart.de/service/entsorgung/abfall-abc/', 0),
(431, 1, '1630927293', 'Sperrabfall Express-Bestellung', 'https://service.stuttgart.de/lhs-services/aws/express-sperrabfall/', 0),
(432, 1, '1630927885', 'MilkyTracker Manual v1.03', 'https://milkytracker.org/docs/MilkyTracker.html', 0),
(433, 1, '1630928556', 'Webcam Testen', 'https://de.webcamtests.com/', 0),
(434, 16, '1630927929', 'udemy Data Science', 'https://www.udemy.com/courses/development/data-science/', 0),
(435, 16, '1630927971', 'The Flask Mega-Tutorial Part I', 'https://blog.miguelgrinberg.com/post/the-flask-mega-tutorial-part-i-hello-world', 0),
(436, 16, '1630927979', 'Flask Tutorials', 'https://realpython.com/tutorials/flask/', 0),
(437, 14, '1630927995', 'Flaskr tutorial', 'https://flask.palletsprojects.com/en/1.1.x/tutorial/', 0),
(438, 14, '1630928068', 'Debian Reference Card PDF', 'https://www.debian.org/doc/manuals/refcard/refcard.en.pdf', 0),
(439, 17, '1630928189', 'DistroKid Get Your Music Into Spotify, Apple Music, TikTok, Pandora, Amazon, Instagram, YouTube, Tidal,', 'https://distrokid.com/', 0),
(440, 18, '1630928216', 'Neat Tape 2', 'https://badsnacks.bandcamp.com/album/neat-tape-2', 0),
(441, 18, '1630928224', ' neat tape 1', 'https://badsnacks.bandcamp.com/album/neat-tape-1', 0),
(442, 1, '1630928337', 'The Demozoo Parties Groups', 'https://demozoo.org/productions/', 0),
(443, 16, '1630928403', 'THE LARGEST ONLINE Tutorials Library ', 'https://www.tutorialspoint.com/tutorialslibrary.htm', 0),
(444, 1, '1630928473', 'Was kann ich wo entsorgen  Abfall-ABC', 'https://www.awn-online.de/haushalte/abfall-abc/abfall-abc-a', 0),
(445, 17, '1630928529', 'Toolkit of algorithms to automate the video editing processToolkit of algorithms to automate the video editing process', 'https://github.com/DevonCrawford/Video-Editing-Automation', 0),
(446, 16, '1630928538', 'How to Create JavaScript Network Graph', 'https://www.anychart.com/blog/2020/07/22/network-graph-javascript/', 0),
(447, 17, '1630929250', 'Machine Learning Using PHP-ML, implementing image classification', 'https://github.com/deltastateonline/ml-php', 0),
(448, 1, '1630928568', 'Platform for building serverless applications and APIs (Node.js, React, GraphQL)', 'https://github.com/webiny/webiny-js?ref=hackernoon.com', 0),
(449, 17, '1630928586', 'PeerTube Free software to take back control of your videos', 'https://joinpeertube.org/', 0),
(450, 17, '1630928595', 'Ubuntu Universe amd64', 'https://ubuntu.pkgs.org/20.04/ubuntu-universe-amd64/', 0),
(451, 17, '1630928627', 'Streamlit The fastest way to build and share data apps', 'https://streamlit.io/', 0),
(452, 17, '1630928653', 'Pydub Manipulate audio with a simple and easy high level interface', 'https://github.com/jiaaro/pydub', 0),
(453, 1, '1630928673', 'kitboga twitch ', 'https://www.twitch.tv/kitboga', 0),
(454, 15, '1630928695', 'How to Switch Between Xorg and Wayland in Ubuntu', 'https://itsfoss.com/switch-xorg-wayland/', 0),
(455, 14, '1630928704', 'TensorFlow for R', 'https://tensorflow.rstudio.com/tutorials/', 0),
(456, 17, '1630928732', 'Whereby - video chat ', 'https://whereby.com/', 0),
(457, 14, '1630928743', 'REST API Tutorial', 'https://restfulapi.net/rest-put-vs-post/', 0),
(458, 17, '1630928783', 'Dein Speedtest Plus startet nach dem Klick', 'https://speedtest.unitymedia.de/#speedtest_init', 0),
(459, 9, '1630928827', 'Aktuelle Zahlen SARS-CoV-2 Deutschland', 'https://www.coronazaehler.de/', 0),
(460, 17, '1630928854', 'English Verb Conjugation', 'https://conjugator.reverso.net/conjugation-english.html', 0),
(461, 9, '1630928932', 'Wirtschaft News', 'https://www.glonaabot.de/wirtschaft', 0),
(462, 1, '1630928950', 'Open Sans Google Fonts', 'https://fonts.google.com/specimen/Open+Sans', 0),
(463, 13, '1630928971', 'The live coding language that lets you be an actual rock star', 'https://stackoverflow.blog/2020/01/29/the-live-coding-language-that-lets-you-be-an-actual-rock-star/', 0),
(464, 13, '1630928985', 'JavaScript Libraries Are Almost Never Updated Once Installed', 'https://blog.cloudflare.com/javascript-libraries-are-almost-never-updated/', 0),
(465, 1, '1630929009', 'Paul Brennus Freelance, Concept Artist Wallpaper', 'https://www.artstation.com/artwork/Z50d9R', 0),
(466, 1, '1630929024', '1,000 Most Common Italian words ', 'https://www.rypeapp.com/blog/most-common-italian-words', 0),
(467, 1, '1630929042', 'Kameruner Schmalzringe, Schürzkuchen, Krawatten', 'https://www.genussregion-oberfranken.de/spezialitaeten/kameruner/', 0),
(468, 17, '1630929119', 'gmic cmd tool to use the image processing features from a shell.', 'https://gmic.eu/', 0),
(469, 16, '1630929186', 'Load and preprocess images  tensorflow', 'https://colab.research.google.com/github/tensorflow/docs/blob/master/site/en/tutorials/load_data/images.ipynb#scrollTo=ucMoYase6URl', 0),
(470, 17, '1630929198', 'A simple, concise tensorflow implementation of fast style transfer', 'https://github.com/hwalsuklee/tensorflow-fast-style-transfer', 0),
(471, 1, '1630929224', '10 Sites for Free Business Stock Photos', 'https://www.foleon.com/blog/best-free-business-stock-photo-websites', 0),
(472, 1, '1630929231', '8 Hidden Google Photos Search Tools You May Have Missed', 'https://www.makeuseof.com/tag/search-tools-google-photos/', 0),
(473, 16, '1630929260', 'Traffic Sign Classification with Keras and Deep Learning', 'https://www.pyimagesearch.com/2019/11/04/traffic-sign-classification-with-keras-and-deep-learning/', 0),
(474, 1, '1630929296', 'kmader  competitions kaggle', 'https://www.kaggle.com/kmader/competitions', 0),
(475, 16, '1630929356', 'Command Line Crash Course', 'https://gist.github.com/hofmannsven/8392477', 0),
(476, 9, '1630929364', 'Data leak exposes unchangeable biometric data of over 1 million people', 'https://www.technologyreview.com/2019/08/14/133723/data-leak-exposes-unchangeable-biometric-data-of-over-1-million-people/', 0),
(477, 1, '1630929390', 'LabelRadar  get your demo in front of the right people', 'https://www.labelradar.com/for-artists', 0),
(478, 1, '1630929407', 'Anjunabeats Demo', 'https://www.labelradar.com/labels/anjunabeats/portal', 0),
(479, 14, '1630929422', 'A convolutional neural network approach to detect congestive heart failure', 'https://www.sciencedirect.com/science/article/abs/pii/S1746809419301776', 0),
(480, 9, '1630929455', 'critical vulnerability in SIM cards', 'https://thenextweb.com/news/attackers-actively-exploiting-simjacker-flaw-to-steal-device-data-and-spy-on-individuals', 0),
(481, 17, '1630929487', 'experiment to display satellite images of the center of countries in a sortable grid.', 'https://github.com/abelsonlive/centroids', 0),
(482, 9, '1630929517', 'Indiegogo vs Kickstarter', 'https://blog.thecrowdfundingformula.com/indiegogo-vs-kickstarter/', 0),
(483, 9, '1630929528', 'Generative AI: A Key to Machine Intelligence', 'https://www.cantorsparadise.com/generative-ai-a-key-to-machine-intelligence-674c89a81bc', 0),
(484, 15, '1630929539', 'K-Means Clustering: From A to Z', 'https://towardsdatascience.com/k-means-clustering-from-a-to-z-f6242a314e9a', 0),
(485, 17, '1630929557', 'Rough-and-ready geometry files for quickly rendering an SVG map of the world', 'https://github.com/guardian/world-map', 0),
(486, 17, '1630929585', 'Country Centroids On A Map', 'https://bl.ocks.org/curran/55d327542393530662c3', 0),
(487, 17, '1630929577', 'D3 US Map with Hover', 'http://bl.ocks.org/ericcoopey/ff45f603352fb7475c85', 0),
(488, 14, '1630929608', 'Leaflet Interactive Choropleth Map', 'https://leafletjs.com/examples/choropleth/', 0),
(489, 16, '1630929628', 'How to make a choropleth map with Leaflet.js', 'https://gist.github.com/ramiroaznar/577043744d523efd6ee981887b274d5a', 0),
(490, 9, '1630929656', 'Thousands Of Linux Servers Infected By Lilu  Ransomware', 'https://fossbytes.com/lilocked-ransomware-infected-linux-servers/', 0),
(491, 9, '1630929670', 'Google launches TensorFlow machine learning framework for graphical data', 'https://venturebeat.com/2019/09/03/google-launches-tensorflow-machine-learning-framework-for-graphical-data/amp/', 0),
(492, 1, '1630929698', 'Echtzeit-Problem- und -Störungsüberwachung AlleStörungen', 'https://xn--allestrungen-9ib.de/', 0),
(493, 16, '1630929726', 'Multi-label classification with Keras', 'https://www.pyimagesearch.com/2018/05/07/multi-label-classification-with-keras/', 0),
(494, 16, '1630929735', 'Image-Classification-by-Keras-and-Tensorflow', 'https://github.com/rohanpillai20/Image-Classification-by-Keras-and-Tensorflow', 0),
(495, 15, '1630929744', 'Shrink your Tensorflow.js Web Model Size with Weight Quantization', 'https://itnext.io/shrink-your-tensorflow-js-web-model-size-with-weight-quantization-6ddb4fcb6d0d', 0),
(496, 9, '1630929765', 'Mysterious iOS Attack Changes Everything We Know About iPhone Hacking', 'https://www.wired.com/story/ios-attack-watering-hole-project-zero/', 0),
(497, 15, '1630929774', 'DEFAULT MYSQL CHARACTER SET AND COLLATION', 'https://mediatemple.net/community/products/dv/204403914/default-mysql-character-set-and-collation', 0),
(498, 17, '1630929800', 'CONVERT YOUTUBE VIDEO LINKS TO MP4', 'https://onlinevideoconverter.com/youtube-converter', 0),
(499, 14, '1630929825', 'ALTER EVENT Statement MySQL 5.6 ', 'https://dev.mysql.com/doc/refman/5.6/en/alter-event.html', 0),
(500, 14, '1630929841', 'TensorFlow 2 quickstart for beginners', 'https://www.tensorflow.org/tutorials/quickstart/beginner', 0),
(501, 16, '1630929851', 'How to Implement CycleGAN Models From Scratch With Keras', 'https://machinelearningmastery.com/how-to-develop-cyclegan-models-from-scratch-with-keras/', 0),
(502, 1, '1630929911', 'demo party', 'https://www.demoparty.net/', 0),
(503, 16, '1630929997', 'House Prices: Advanced Regression Techniques kaggle', 'https://www.kaggle.com/stanleygiovany96/deep-learning-workshop', 0),
(504, 17, '1630930023', 'The Lightweight PHP Database Framework to Accelerate Development', 'https://medoo.in/', 0),
(505, 17, '1630930040', 'CakePHP 4.1 Strawberry.', 'https://cakephp.org/', 0),
(506, 14, '1630930062', 'CakePHP Installation', 'https://book.cakephp.org/3/en/installation.html', 0),
(507, 17, '1630930075', 'CodeIgniter PHP framework', 'https://www.codeigniter.com/', 0),
(508, 17, '1630930092', 'The PHP Framework for Web Artisans Laravel', 'https://laravel.com/', 0),
(509, 17, '1630930103', 'Zend Framework', 'https://framework.zend.com/downloads', 0),
(510, 17, '1630930112', 'Symfony', 'https://symfony.com/', 0),
(511, 17, '1630930131', 'Yiiframework', 'https://www.yiiframework.com/', 0),
(512, 17, '1630930147', 'Slim micro framework for PHP', 'https://www.slimframework.com/', 0),
(513, 14, '1630930178', 'Learn Perl', 'https://www.perl.org/learn.html', 0),
(514, 14, '1630930197', 'Learn Perl A Modern Programming Language', 'https://learn.perl.org/', 0),
(515, 16, '1630930210', 'Creating a static website with Perl', 'https://learn.perl.org/examples/static_server.html', 0),
(516, 16, '1630930220', 'Reading the contents of a directory', 'https://learn.perl.org/examples/directory_list.html', 0),
(517, 14, '1630930238', 'PHP Manual', 'https://www.php.net/manual/en/', 0),
(518, 14, '1630930257', 'MySQL Documentation', 'https://dev.mysql.com/doc/', 0),
(519, 14, '1630930271', 'MySQL 8.0 Reference Manual', 'https://dev.mysql.com/doc/refman/8.0/en/', 0),
(520, 14, '1630930296', 'MariaDB Server documentation', 'https://mariadb.org/documentation/#entry-header', 0),
(521, 14, '1630930312', 'Go is an open source programming language', 'https://golang.org/#', 0),
(522, 14, '1630930322', 'go Documentation', 'https://golang.org/doc/', 0),
(523, 14, '1630930330', 'Kotlin docs', 'https://kotlinlang.org/docs/home.html', 0),
(524, 17, '1630930368', 'The CIFAR-10 dataset', 'https://www.cs.toronto.edu/~kriz/cifar.html', 0),
(525, 17, '1630930382', 'An Open Source Machine Learning Framework for Everyone', 'https://github.com/tensorflow/tensorflow', 0),
(526, 17, '1630930392', 'Models and examples built with TensorFlow', 'https://github.com/tensorflow/models', 0),
(527, 16, '1630930402', 'Retraining an Image Classifier', 'https://www.tensorflow.org/hub/tutorials/tf2_image_retraining', 0),
(528, 16, '1630930413', 'TensorFlow Hub is a repository of trained machine learning models.', 'https://www.tensorflow.org/hub/index', 0),
(529, 14, '1630930439', 'PYTORCH TUTORIALS', 'https://pytorch.org/tutorials/', 0),
(530, 14, '1630930463', 'keras Code examples', 'https://keras.io/examples/', 0),
(531, 17, '1630930486', 'ImageNet is an image database organized according to the WordNet hierarchy', 'https://image-net.org/index.php', 0),
(532, 17, '1630930499', 'Datasets, Transforms and Models specific to Computer Vision', 'https://github.com/pytorch/vision', 0),
(533, 17, '1630931506', 'phpMyAdmin', 'https://www.phpmyadmin.net/', 0),
(534, 17, '1630931529', 'Adminer - Database management in a single PHP file', 'https://www.adminer.org/', 0),
(535, 14, '1630931601', 'Composer Basic usage', 'https://getcomposer.org/doc/01-basic-usage.md', 0),
(536, 14, '1630936115', 'Composer Command - Line Interface Commands', 'https://getcomposer.org/doc/03-cli.md', 0),
(537, 17, '1630931680', 'Codeception - PHP Testing framework', 'https://codeception.com/', 0),
(538, 17, '1630932799', 'Sysmon – A Graphical System Activity Monitor for Linux', 'https://www.tecmint.com/sysmon-linux-activity-monitor/', 0),
(539, 17, '1630932844', 'avlinux AVL-MXE 64bit', 'http://download.linuxaudio.org/avlinux/AVL-MXE/64bit/', 0),
(540, 17, '1630932857', 'avlinux mirror', 'http://mirror.bytemark.co.uk/avlinux/', 0),
(541, 17, '1630932878', 'AV Linux MX Edition', 'http://www.bandshed.net/avlinux/', 0),
(542, 14, '1630932944', 'PhpStorm documentation', 'https://www.jetbrains.com/phpstorm/documentation/', 0),
(543, 17, '1630933114', 'Snipe-IT  free open source IT asset license management system', 'https://snipeitapp.com/', 0),
(544, 17, '1630933129', 'snipe-it free open source IT asset/license management system', 'https://github.com/snipe/snipe-it', 0),
(545, 16, '1630933206', '30 Days of ML', 'https://www.kaggle.com/thirty-days-of-ml', 0),
(546, 17, '1631016688', '18 amazing GitHub repositories that will help you make a Beautiful Project', 'https://dev.to/kerthin/18-amazing-github-repositories-that-will-help-you-make-a-beautiful-project-3pgo', 0),
(547, 16, '1631016736', 'Introducing Magic URL Login to Appwrite', 'https://dev.to/appwrite/introducing-magic-url-login-to-appwrite-2l', 0),
(548, 17, '1631016758', 'Node js Packages and Resources', 'https://dev.to/zigrazor/node-js-packages-and-resources-5en4', 0),
(549, 16, '1631016886', 'Netflix clone from Scratch  JavaScript PHP   MySQL ', 'https://dev.to/cglikpo/create-a-netflix-clone-from-scratch-javascript-php-mysql-day-43-4759', 0),
(550, 16, '1631016983', 'Parallelism in JavaScript', 'https://dev.to/sfundomhlungu/parallelism-in-javascript-build-super-programs-5a9k', 0),
(551, 16, '1631017117', 'Java Functional Programming', 'https://dev.to/abdorah/java-functional-programming-57gd', 0),
(552, 13, '1631017178', 'Top Data Science competition platforms', 'https://dev.to/bharadwaj6262/top-data-science-competition-platforms-3g4n', 0),
(553, 13, '1631017333', 'Top 11 News APIs for your next projects in 2022', 'https://dev.to/digitallyrajat/top-11-news-apis-for-your-next-projects-in-2022-48oi', 0),
(554, 16, '1631017382', 'How to flatten array using Javascript', 'https://dev.to/afozbek/how-to-flatten-array-using-javascript-17kg', 0),
(555, 17, '1631017505', 'Live monitor and analyze Redis queries', 'https://github.com/c1982/redis-traffic-stats', 0),
(556, 16, '1631017649', 'React Tutorial     Build a Movie List Generator with React and HarperDB', 'https://www.freecodecamp.org/news/react-tutorial-build-a-movie-list-generator-with-react-and-harperdb/', 0),
(557, 16, '1631017688', 'Python Sort List', 'https://www.freecodecamp.org/news/python-sort-list-how-to-order-by-descending-or-ascending/', 0),
(558, 16, '1631017703', 'CSS Flexbox and Grid Tutorial', 'https://www.freecodecamp.org/news/css-flexbox-and-grid-tutorial/', 0),
(559, 16, '1631017743', 'How Machine Learning Uses Linear Algebra to Solve Data Problems', 'https://www.freecodecamp.org/news/how-machine-learning-leverages-linear-algebra-to-optimize-model-trainingwhy-you-should-learn-the-fundamentals-of-linear-algebra/', 0),
(560, 16, '1631017793', 'Use Selenium to Create a Web Scraping Bot', 'https://www.freecodecamp.org/news/use-selenium-to-create-a-web-scraping-bot/', 0),
(561, 16, '1631017872', 'Building a random number generator with JavaScript and Node js', 'https://blog.logrocket.com/building-random-number-generator-javascript-nodejs/', 0),
(562, 16, '1631017968', 'Introduction to the Solid JavaScript Library', 'https://css-tricks.com/introduction-to-the-solid-javascript-library/', 0),
(563, 16, '1631018019', 'Use lspci on Linux to see your hardware', 'https://opensource.com/article/21/9/lspci-linux-hardware', 0),
(564, 16, '1631018068', '20 essential Linux commands for every user', 'https://opensource.com/article/21/9/essential-linux-commands', 0),
(565, 16, '1631018092', 'Parse command-line arguments with argparse in Python', 'https://opensource.com/article/21/8/python-argparse', 0),
(566, 16, '1631018171', 'News classification  fine-tuning RoBERTa on TPUs with TensorFlow', 'https://towardsdatascience.com/news-category-classification-fine-tuning-roberta-on-tpus-with-tensorflow-f057c37b093', 0),
(567, 19, '1631029754', 'Die 5 besten Rezepte mit Pfifferlingen', 'https://www.koch-mit.de/kueche/pfifferlinge/', 0),
(568, 19, '1631029832', 'Lachsfilet mit Pfefferling-Jakobsmuschel-Ragout', 'https://eatsmarter.de/rezepte/lachsfilet-mit-pfefferling-jakobsmuschel-ragout', 0),
(569, 19, '1631029847', 'Putengeschnetzeltes mit Pfifferlingen', 'https://eatsmarter.de/rezepte/putengeschnetzeltes-mit-pfifferlingen', 0),
(570, 19, '1631029859', 'Seezungenfilet und gebratene Pilze', 'https://eatsmarter.de/rezepte/seezungenfilet-und-semmelstoppelpilze', 0),
(571, 1, '1631034533', 'Airline routes and airport map', 'https://www.flightconnections.com/airlines', 0),
(572, 9, '1631034549', '1000 Degree Centigrade Solar Panel Ready', 'https://bloggersblogs.com/1000-degree-centigrade-solar-panel-ready/', 0),
(573, 1, '1631034573', 'Concentrated Solar Energy to Exceed 1000 Degrees Celsius', 'https://www.offgridenergyindependence.com/articles/18882/concentrated-solar-energy-to-exceed-1000-degrees-celsius', 0),
(574, 1, '1631045782', 'LENOVO IdeaPad 3i 17,3 Zoll 8 GB RAM, 512 GB SSD', 'https://www.mediamarkt.de/de/product/_lenovo-ideapad-3i-2744002.html', 0),
(575, 1, '1631045836', 'LENOVO V15, Notebook mit 15,6 Zoll', 'https://www.mediamarkt.de/de/product/_lenovo-v15-2728489.html', 0),
(576, 16, '1631090161', 'How to learn React - The Effective way', 'https://dev.to/shaan_alam/how-to-learn-react-the-effective-way-2km7', 0),
(577, 15, '1631091227', 'You should add more search engines to Google Chrome', 'https://www.popsci.com/diy/add-search-engines-to-google-chrome/', 0),
(578, 16, '1631091246', 'IntelliJ IDEA Set up a Git repository', 'https://www.jetbrains.com/help/idea/set-up-a-git-repository.html', 0),
(579, 16, '1631091273', 'Bootstrap 5.1.1 npm', 'https://blog.getbootstrap.com/2021/09/07/bootstrap-5-1-1/', 0),
(580, 15, '1631091297', 'Google\'s Incredible New Photo AI Makes \'Zoom And Enhance\' a Real Thing', 'https://www.sciencealert.com/google-s-latest-photo-ai-makes-zoom-and-enhance-a-reality', 0),
(581, 16, '1631091314', 'How to download HTML element as a image. Visiting card designer', 'https://dev.to/kunaal438/how-to-make-a-designing-website-with-html-css-and-js-visiting-card-designer-4ml4', 0),
(582, 16, '1631091358', 'Classes in JS before learning React', 'https://dev.to/rajshreevats/classes-in-js-before-learning-react-1kil', 0),
(583, 16, '1631091384', 'How to Display the Progress of Promises in JavaScript', 'https://dev.to/jrdev_/how-to-display-the-progress-of-promises-in-javascript-lh0', 0),
(584, 16, '1631091397', 'How to Run Java Programs in Ubuntu', 'https://itsfoss.com/run-java-program-ubuntu/', 0),
(585, 16, '1631091411', '3 TypeScript Tricks You Can Use in JavaScript', 'https://dev.to/masteringjs/3-typescript-tricks-you-can-use-in-javascript-1m75', 0),
(586, 16, '1631091426', 'How to See Which Branch Your Teammate is on in PhpStorm', 'https://dev.to/gitlive/how-to-see-which-branch-your-teammate-is-on-in-phpstorm-1f3k', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `categories`
--

CREATE TABLE `categories` (
  `categories_id` int(11) NOT NULL,
  `categories_parent` int(11) NOT NULL,
  `categories_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `categories`
--

INSERT INTO `categories` (`categories_id`, `categories_parent`, `categories_name`) VALUES
(1, 0, 'Default'),
(2, 1, 'Github'),
(3, 2, 'Stylegan'),
(9, 1, 'News'),
(13, 1, 'Blog'),
(14, 1, 'Documentation'),
(15, 1, 'Tech'),
(16, 1, 'Programming Tutorials'),
(17, 1, 'Software and Apps'),
(18, 1, 'Music'),
(19, 1, 'Food Recipes'),
(20, 1, 'Movies');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `favourites`
--

CREATE TABLE `favourites` (
  `favourites_id` int(11) NOT NULL,
  `bookmarks_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `favourites`
--

INSERT INTO `favourites` (`favourites_id`, `bookmarks_id`) VALUES
(6, 23),
(19, 27),
(18, 417),
(17, 419),
(16, 420),
(15, 438),
(7, 500),
(14, 506),
(5, 513),
(4, 514),
(13, 517),
(11, 518),
(10, 519),
(12, 520),
(9, 529),
(3, 535),
(2, 536),
(1, 537),
(21, 585),
(22, 586);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `created`, `modified`) VALUES
(1, 'cakephp@example.com', 'secret', '2021-09-07 20:02:03', '2021-09-07 20:02:03');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `user_key` (`user_id`);

--
-- Indizes für die Tabelle `articles_tags`
--
ALTER TABLE `articles_tags`
  ADD PRIMARY KEY (`article_id`,`tag_id`),
  ADD KEY `tag_key` (`tag_id`);

--
-- Indizes für die Tabelle `bookmarks`
--
ALTER TABLE `bookmarks`
  ADD PRIMARY KEY (`bookmarks_id`),
  ADD UNIQUE KEY `bookmarks_url` (`bookmarks_url`) USING HASH,
  ADD KEY `categories_id` (`categories_id`);

--
-- Indizes für die Tabelle `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categories_id`),
  ADD UNIQUE KEY `categories_name` (`categories_name`);

--
-- Indizes für die Tabelle `favourites`
--
ALTER TABLE `favourites`
  ADD PRIMARY KEY (`favourites_id`),
  ADD UNIQUE KEY `bookmarks_id` (`bookmarks_id`);

--
-- Indizes für die Tabelle `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indizes für die Tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `bookmarks`
--
ALTER TABLE `bookmarks`
  MODIFY `bookmarks_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=587;

--
-- AUTO_INCREMENT für Tabelle `categories`
--
ALTER TABLE `categories`
  MODIFY `categories_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT für Tabelle `favourites`
--
ALTER TABLE `favourites`
  MODIFY `favourites_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT für Tabelle `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `user_key` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints der Tabelle `articles_tags`
--
ALTER TABLE `articles_tags`
  ADD CONSTRAINT `article_key` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`),
  ADD CONSTRAINT `tag_key` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`);

--
-- Constraints der Tabelle `bookmarks`
--
ALTER TABLE `bookmarks`
  ADD CONSTRAINT `bookmarks_ibfk_1` FOREIGN KEY (`categories_id`) REFERENCES `categories` (`categories_id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
