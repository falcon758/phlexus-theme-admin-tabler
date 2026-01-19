{% set email_translation = translation.setType('email').getTranslator() %}

<div style="background:#f5f7fb;padding:24px;font-family:Arial,Helvetica,sans-serif;color:#1f2937;">
	<div style="max-width:640px;margin:0 auto;background:#ffffff;border:1px solid #e5e7eb;border-radius:12px;overflow:hidden;">
		<div style="padding:20px 24px;border-bottom:1px solid #e5e7eb;">
			<div style="font-size:18px;font-weight:800;">{{ email_translation._('email-contactus') }}</div>
		</div>

		<div style="padding:24px;">
			<div style="margin-bottom:14px;">
				<div style="font-size:12px;color:#6b7280;margin-bottom:4px;">{{ email_translation._('name') }}</div>
				<div style="font-size:14px;font-weight:700;">{{ name }}</div>
			</div>

			<div style="margin-bottom:14px;">
				<div style="font-size:12px;color:#6b7280;margin-bottom:4px;">{{ email_translation._('email') }}</div>
				<div style="font-size:14px;font-weight:700;">{{ email }}</div>
			</div>

			<div style="margin-bottom:14px;">
				<div style="font-size:12px;color:#6b7280;margin-bottom:4px;">{{ email_translation._('message') }}</div>
				<div style="font-size:14px;line-height:1.6;white-space:pre-wrap;">{{ message }}</div>
			</div>
		</div>
	</div>
</div>