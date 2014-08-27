Rails.application.routes.draw do
  match('species', {:via => :get, :to => 'species#index'})
  match('species/new', {:via => :get, :to => 'species#new'})
  match('species', {:via => :post, :to => 'species#create'})
  match('species/:id/edit', {:via => :get, :to => 'species#edit'})
  match('species/:id', {:via => [:patch, :put], :to => 'species#update'})
  match('species/:id', {:via => :delete, :to => 'species#destroy'})

  match('species/:species_id/sightings', {:via => :get, :to => 'sighting#index'})
  match('species/:species_id/sightings/new', {:via => :get, :to => 'sighting#new'})
  match('species/:species_id/sightings', {:via => :post, :to => 'sighting#create'})
  match('species/:species_id/sightings/:id/edit', {:via => :get, :to => 'sighting#edit'})
  match('species/:species_id/sightings/:id', {:via => [:patch, :put], :to => 'sighting#update'})
  match('species/:species_id/sightings/:id', {:via => :delete, :to => 'sighting#delete'})

end
