{{ template "layout.tpl" . }}

{{ define "content" }}
<section class="section">
	<div class="container">

		<h1 class="title">Set Password</h1>

		<div class="columns">
			<div class="column is-3">
				<div class="field">
					<p class="control has-icons-left">
						<input class="input" type="password" placeholder="Password">
						<span class="icon is-small is-left">
							<i class="fa fa-lock"></i>
						</span>
					</p>
				</div>
			</div>

			<div class="column is-2">
				<div class="field">
					<p class="control">
						<button class="button is-success">
							Submit
						</button>
					</p>
				</div>
			</div>
		</div>


	</div>
</section>

{{ end }}