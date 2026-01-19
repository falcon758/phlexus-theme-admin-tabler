{% set t = translation.setType('email').getTranslator() %}

<div style="background:#f5f7fb;padding:24px;font-family:Arial,Helvetica,sans-serif;color:#1f2937;">
	<div style="max-width:640px;margin:0 auto;background:#ffffff;border:1px solid #e5e7eb;border-radius:12px;overflow:hidden;">
		<div style="padding:20px 24px;border-bottom:1px solid #e5e7eb;">
			<div style="font-size:16px;font-weight:700;">Phlexus</div>
		</div>
		<div style="padding:24px;">
			<div style="font-size:16px;line-height:1.5;margin-bottom:16px;">
				{{ t._('email-activation') }}
			</div>
			<div style="margin:18px 0;">
				<a href="{{ url }}" style="display:inline-block;background:#206bc4;color:#ffffff;text-decoration:none;padding:10px 14px;border-radius:10px;font-weight:700;">
					{{ url }}
				</a>
			</div>
			<div style="font-size:12px;color:#6b7280;line-height:1.5;">
				If the button doesn’t work, copy and paste this URL into your browser:<br/>
				<a href="{{ url }}" style="color:#206bc4;word-break:break-all;">{{ url }}</a>
			</div>
		</div>
	</div>
</div>