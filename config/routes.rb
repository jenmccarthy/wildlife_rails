Rails.application.routes.draw do
  match('/', {:via => :get, :to => 'species#index'})

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

  match('regions/:region_id/sightings', {:via => :get, :to => 'sighting#index'})
  match('regions/:region_id/sightings/new', {:via => :get, :to => 'sighting#new'})
  match('regions/:region_id/sightings', {:via => :post, :to => 'sighting#create'})
  match('regions/:region_id/sightings/:id/edit', {:via => :get, :to => 'sighting#edit'})
  match('regions/:region_id/sightings/:id', {:via => [:patch, :put], :to => 'sighting#update'})
  match('regions/:region_id/sightings/:id', {:via => :delete, :to => 'sighting#delete'})

  match('regions', {:via => :get, :to => 'region#index'})
  match('regions/new', {:via => :get, :to => 'region#new'})
  match('regions', {:via => :post, :to => 'region#create'})
  match('regions/:id/edit', {:via => :get, :to => 'region#edit'})
  match('regions/:id', {:via => [:patch, :put], :to => 'region#update'})
  match('regions/:id', {:via => :delete, :to => 'region#destroy'})
end
