<?php $publicUserThemePath = $this->callMacro('assetsPath', []); ?>

<!doctype html>
<html>
    <head>
        <?= $this->partial('partials/head') ?>
    </head>

    <body>
        <?= $this->partial('partials/header-public') ?>

        <?= $this->partial('partials/nav-public') ?>
        
        <div class="page">
            <?= $this->partial('partials/flash-messages') ?>

            <div class="page-main">
                <div class="my-3 my-md-5">
                    <?php if (isset($pageTitle)) { ?>
                        <div class="container">
                            <div class="page-header">
                                <h1 class="page-title"><?= $pageTitle ?></h1>
                            </div>
                        </div>
                    <?php } ?>

                    <?= $this->getContent() ?>
                </div>
            </div>
        </div>

        <?= $this->partial('partials/footer-public') ?>
    </body>
</html>
