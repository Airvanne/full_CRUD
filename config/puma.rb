# Puma can serve each request in a thread from an internal thread pool.
# The `threads` method setting takes two numbers: a minimum and maximum.
# Any libraries that use thread pools should be configured to match
# the maximum value specified for Puma. Default is set to 5 threads for minimum
# and maximum; this matches the default thread size of Active Record.
#
threads_count = ENV.fetch("RAILS_MAX_THREADS") { 5 }
threads threads_count, threads_count

# Specifies the `port` that Puma will listen on to receive requests; default is 3000.
#
port        ENV.fetch("PORT") { 3000 }

# Specifies the `environment` that Puma will run in.
#
environment ENV.fetch("RAILS_ENV") { "development" }

# Specifies the number of `workers` to boot in clustered mode.
# Workers are forked webserver processes. If using threads and workers together
# the concurrency of the application would be max `threads` * `workers`.
# Workers do not work on JRuby or Windows (both of which do not support
# processes).
#
# workers ENV.fetch("WEB_CONCURRENCY") { 2 }

# Use the `preload_app!` method when specifying a `workers` number.
# This directive tells Puma to first boot the application and load code
# before forking the application. This takes advantage of Copy On Write
# process behavior so workers use less memory.
#
# preload_app!

# Allow puma to be restarted by `rails restart` command.
plugin :tmp_restart
# <!--
#   	<form action="/gossip/<%= @params %>" method="PUT">
#       <input type="hidden" name="authenticity_token" value="<%= form_authenticity_token %>" />
#   	  <div class="form-group">
#   	    <label for="formGroupExampleInput">Ton pseudo</label>
#   	    <input type="text" class="form-control" id="formGroupExampleInput" name="username" value="<%= Gossip.find(@params).anonymous_gossiper %>">
#   	  </div>
#   	  <div class="form-group">
#   	    <label for="exampleFormControlInput1">Titre de ton potin</label>
#   	    <input type="text" class="form-control" id="exampleFormControlInput1" name="title" value="<%= Gossip.find(@params).title %>">
#   	  </div>
#   	  <div class="form-group">
#   		<label for="exampleFormControlTextarea1">Ton potin</label>
#   		<textarea class="form-control" id="exampleFormControlTextarea1" name="content"><%= Gossip.find(@params).content %></textarea>
#   		  </div>
#   		  <button type="submit" class="btn btn-primary">Envoyer</button>
#   	</form> -->
