{{ template "layout.tpl" . }}

{{ define "content" }}
<section class="section">
	<div class="container">

		<h1 class="title">Search User</h1>

		<div class="columns">
			<div class="column is-3">
				<div class="field">
					<p class="control has-icons-left">
						<input class="input" type="phone" placeholder="Phone" name="phone">
						<span class="icon is-small is-left">
							<i class="fa fa-phone"></i>
						</span>
					</p>
				</div>
			</div>

			<div class="column is-2">
				<div class="field">
					<p class="control">
						<button class="button is-success">
							Search
						</button>
					</p>
				</div>
			</div>
		</div>


		<table class="table is-bordered is-striped">
			<thead>
				<tr>
					<th>ID</th>
					<th>Name</th>
					<th>Email</th>
					<th>Phone</th>
					<th>GitHub?</th>
					<th>Linkedin?</th>
					<th>Twitter?</th>
					<th>Password?</th>
					<th>View</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th><a href="/user/1">1</a></th>
					<td>Sangeet Kumar</td>
					<td>sangeet.kumar@gmail.com</td>
					<td>8860948848</td>
					<td><p class="has-text-centered"><span class="icon"><i class="fas fa-times"></i></span></p></td>
					<td><p class="has-text-centered"><span class="icon"><i class="fas fa-check"></i></span></p></td>
					<td><p class="has-text-centered"><span class="icon"><i class="fas fa-times"></i></span></p></td>
					<td><p class="has-text-centered"><span class="icon"><i class="fas fa-check"></i></span></p></td>
					<td><p class="has-text-centered"><a class="icon" href="/user/1"><i class="far fa-eye"></i></a></p></td>
				</tr>
				<tr>
					<th><a href="/user/2">2</a></th>
					<td>Sangeet Kumar</td>
					<td>sangeet.kumar@gmail.com</td>
					<td>8860948848</td>
					<td><p class="has-text-centered"><span class="icon"><i class="fas fa-check"></i></span></p></td>
					<td><p class="has-text-centered"><span class="icon"><i class="fas fa-check"></i></span></p></td>
					<td><p class="has-text-centered"><span class="icon"><i class="fas fa-times"></i></span></p></td>
					<td><p class="has-text-centered"><span class="icon"><i class="fas fa-times"></i></span></p></td>
					<td><p class="has-text-centered"><a class="icon" href="/user/1"><i class="far fa-eye"></i></a></p></td>				</tr>
				<tr>
					<th><a href="/user/3">3</a></th>
					<td>Sangeet Kumar</td>
					<td>sangeet.kumar@gmail.com</td>
					<td>8860948848</td>
					<td><p class="has-text-centered"><span class="icon"><i class="fas fa-check"></i></span></p></td>
					<td><p class="has-text-centered"><span class="icon"><i class="fas fa-times"></i></span></p></td>
					<td><p class="has-text-centered"><span class="icon"><i class="fas fa-check"></i></span></p></td>
					<td><p class="has-text-centered"><span class="icon"><i class="fas fa-check"></i></span></p></td>
					<td><p class="has-text-centered"><a class="icon" href="/user/1"><i class="far fa-eye"></i></a></p></td>				</tr>
				<tr>
					<th><a href="/user/4">4</a></th>
					<td>Sangeet Kumar</td>
					<td>sangeet.kumar@gmail.com</td>
					<td>8860948848</td>
					<td><p class="has-text-centered"><span class="icon"><i class="fas fa-check"></i></span></p></td>
					<td><p class="has-text-centered"><span class="icon"><i class="fas fa-check"></i></span></p></td>
					<td><p class="has-text-centered"><span class="icon"><i class="fas fa-times"></i></span></p></td>
					<td><p class="has-text-centered"><span class="icon"><i class="fas fa-check"></i></span></p></td>
					<td><p class="has-text-centered"><a class="icon" href="/user/1"><i class="far fa-eye"></i></a></p></td>				</tr>
				<tr>
					<th><a href="/user/5">5</a></th>
					<td>Sangeet Kumar</td>
					<td>sangeet.kumar@gmail.com</td>
					<td>8860948848</td>
					<td><p class="has-text-centered"><span class="icon"><i class="fas fa-check"></i></span></p></td>
					<td><p class="has-text-centered"><span class="icon"><i class="fas fa-check"></i></span></p></td>
					<td><p class="has-text-centered"><span class="icon"><i class="fas fa-check"></i></span></p></td>
					<td><p class="has-text-centered"><span class="icon"><i class="fas fa-times"></i></span></p></td>
					<td><p class="has-text-centered"><a class="icon" href="/user/1"><i class="far fa-eye"></i></a></p></td>
				</tr>
			</tbody>
		</table>

	</div>
</section>

{{ end }}