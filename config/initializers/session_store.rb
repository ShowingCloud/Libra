# Be sure to restart your server when you modify this file.

Libra::Application.config.session_store :redis_store,
	servers: ["#{Rails.configuration.database_configuration[Rails.env]["redis"]}/session"],
	expire_after: 7.days,
	key: "_Libra_session",
	threadsafe: false
