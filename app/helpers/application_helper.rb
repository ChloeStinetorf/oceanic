module ApplicationHelper
  def login_nav
    nav = ""

    if @auth.present? && @auth.is_admin?
      nav += "<li>#{link_to('Planes', planes_path, :class => 'button tiny')}<li>"
      nav += "<li>#{link_to('Flights', flights_path, :class => 'button tiny')}<li>"
    end
    if @auth.present? && !@auth.is_admin?
       nav += "<li>#{link_to('Search', search_path, :class => 'button tiny')}<li>"
     end

    if @auth.present?
      nav += "<li>#{link_to(@auth.email, '/login', :method => :delete, :remote => true, :class => 'button tiny alert')}<li>"
    else
      nav += "<li>#{link_to('Register', new_user_path)}</li>"
      nav += "<li>#{link_to('Login', login_path)}</li>"
    end
  end
end
