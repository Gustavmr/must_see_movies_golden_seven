Rails.application.routes.draw do

  get("/",                         {:controller => "movies", :action => "show_directors"})

  #Show List
  get("/directors",                {:controller => "movies", :action => "show_directors"})
  get("/actors",                   {:controller => "movies", :action => "show_actors"})
  get("/movies",                   {:controller => "movies", :action => "show_movies"})

  #New entry - form & action
  get("/directors/new_form",       {:controller => "movies", :action => "new_dir"})
  get("/actors/new_form",          {:controller => "movies", :action => "new_act"})
  get("/movies/new_form",          {:controller => "movies", :action => "new_mov"})

  get("/create_directors",         {:controller => "movies", :action => "create_row"})
  get("/create_actors",            {:controller => "movies", :action => "create_row_act"})
  get("/create_movies",            {:controller => "movies", :action => "create_row_mov"})

  #Show Individual Record
  get("/directors/:id",            {:controller => "movies", :action => "directors_detail"})
  get("/actors/:id",               {:controller => "movies", :action => "actors_detail"})
  get("/movies/:id",               {:controller => "movies", :action => "detail_movies"})

  #Delete individual record
  get("/delete_directors/:id",     {:controller => "movies", :action => "delete_dir"})
  get("/delete_actors/:id",        {:controller => "movies", :action => "delete_act"})
  get("/delete_movies/:id",        {:controller => "movies", :action => "delete_mov"})

  #Edit records
  get("/directors/:id/edit_form",  {:controller => "movies", :action => "edit_dir"})
  get("/update_dir/:id",           {:controller => "movies", :action => "update_dir"})

  get("/actors/:id/edit_form",     {:controller => "movies", :action => "edit_act"})
  get("/update_act/:id",           {:controller => "movies", :action => "update_act"})

  get("/movies/:id/edit_form",     {:controller => "movies", :action => "edit_mov"})
  get("/update_mov/:id",           {:controller => "movies", :action => "update_mov"})

end
