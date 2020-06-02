{{ template "layout.tpl" . }}

{{ define "content" }}
<section class="section">
	<div class="columns">
		<div class="column is-4 is-offset-4">
			<h1 class="title has-text-centered">Login</h1>

			<div class="field">
				<p class="control has-icons-left">
					<input class="input" type="phone" placeholder="Phone">
					<span class="icon is-small is-left">
						<i class="fa fa-phone"></i>
					</span>
				</p>
			</div>

			<div class="field">
				<p class="control has-icons-left">
					<input class="input" type="password" placeholder="Password">
					<span class="icon is-small is-left">
						<i class="fa fa-lock"></i>
					</span>
				</p>
			</div>
			
			<div class="field">
				<p class="control">
					<button class="button is-success">
						Login
					</button>
				</p>
			</div>

			<div class="field">
				<p class="control">
					<a class="button is-fullwidth is-outlined is-dark" 
						href="{{.BaseURL}}/github/login">
						<span class="icon">
							<i class="fab fa-github"></i>
						</span>
						<span>Login using GitHub</span>
					</a>
				</p>
			</div>

			<div class="field">
				<p class="control">
					<a class="button is-fullwidth is-outlined is-link"
						href="{{.BaseURL}}/linkedin/login">
						<span class="icon">
							<i class="fab fa-linkedin"></i>
						</span>
						<span>Login using Linkedin</span>
					</a>
				</p>
			</div>

			<div class="field">
				<p class="control">
					<button class="button is-fullwidth is-outlined is-info">
						<span class="icon">
							<i class="fab fa-twitter"></i>
						</span>
						<span>Login using Twitter</span>
					</button>
				</p>
			</div>

		</div>
	</div>
</section>
{{ end }}