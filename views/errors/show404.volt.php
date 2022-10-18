<?php $translation = $this->translation->setTypePage(); ?>


<div class="page-content">
    <div class="container text-center">
        <div class="display-1 text-muted mb-5"><i class="si si-exclamation"></i> 404</div>

        <h1 class="h2 mb-3"><?= $this->translation->_('title-error') ?></h1>

        <p class="h4 text-muted font-weight-normal mb-7"><?= $this->translation->_('text-error') ?></p>

        <a class="btn btn-primary" href="javascript:history.back()">
            <i class="fe fe-arrow-left mr-2"></i>Go back
        </a>
    </div>
</div>

