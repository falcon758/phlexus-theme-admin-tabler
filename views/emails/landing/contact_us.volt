{% set email_translation = translation.setType('email').getTranslator() %}

<h1>{{ email_translation._('email-contactus') }}</h1>

<div>{{ email_translation._('name') }}</div>
<div>{{ name }}</div>
<hr/>
<div>{{ email_translation._('email') }}</div>
<div>{{ email }}</div>
<hr/>
<div>{{ email_translation._('message') }}</div>
<div>{{ message }}</div>