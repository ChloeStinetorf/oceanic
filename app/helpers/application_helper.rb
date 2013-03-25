module ApplicationHelper
  def login_nav
    nav = ""
    nav += "<li>#{link_to('Home', flights_path, :class => 'button radius small alert')}</li>"

    if @auth.present? && @auth.is_admin?
      nav += "<li>#{link_to('Planes', planes_path, :class => 'button radius small alert')}<li>"
      nav += "<li>#{link_to('Flights', flights_path, :class => 'button radius small alert')}<li>"
    end
    if @auth.present?
      nav += "<li>#{link_to('Logout: ' + @auth.name, '/login', :method => :delete, :remote => true, :class => 'button radius small alert')}<li>"
    else
      nav += "<li>#{link_to('Register', new_user_path, :remote => true, :class => 'button radius small alert')}</li>"
      nav += "<li>#{link_to('Login', login_path, :remote => true, :class => 'button radius small alert')}</li>"
    end
  end
end

