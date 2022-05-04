class ActorsController < ApplicationController

  def index
    @list_of_actors = Actor.all
    render({ :template => "actor_templates/index.html.erb"})
  end

  def details
    @this_actor = Actor.where({ :id => params.fetch("actor_id") }).at(0)
    @repertoire = Character.where({ :actor_id => @this_actor.id })
    render({ :template => "actor_templates/details.html.erb"})
  end

end
