I18nPoetry::Application.routes.draw do
  scope ":locale", local: /#{I18n.available_locales.join("|")}/ do
    resources :poems
    root :to => "poems#index"
  end
  match '*path', to: redirect("/#{I18n.default_locale}/%{path}")
  match '', to: redirect("/#{I18n.default_locale}")
end
