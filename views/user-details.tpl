{{ template "layout.tpl" . }}

{{ define "content" }}
<section class="section">
	<div class="container">
		<h1 class="title">User Details</h1>
		<table class="table">
			<tbody>
				<tr>
					<th>ID:</th>
					<td>1</td>
				</tr>
				<tr>
					<th>Name:</th>
					<td>Sangeet Kumar</td>
				<tr>
					<th>Email:</th>
					<td>sangeet.kumar@gmail.com</td>
				<tr>
					<th>Phone:</th>
					<td>8860948848</td>
				<tr>
					<th>Meta:</th>
					<td>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
					tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
					quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
					consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
					cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
					proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</td>
			</tbody>
		</table>



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