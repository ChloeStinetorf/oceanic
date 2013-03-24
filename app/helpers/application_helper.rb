module ApplicationHelper
  def login_nav
    nav = ""

    if @auth.present? && @auth.is_admin?
      nav += "<li>#{link_to('Planes', planes_path, :class => 'button radius alert')}<li>"
      nav += "<li>#{link_to('Flights', flights_path, :class => 'button radius alert')}<li>"
    end
    if @auth.present? && !@auth.is_admin?
       nav += "<li>#{link_to('Search', '#', :class => 'button radius alert')}<li>"
     end
    if @auth.present?
      nav += "<li>#{link_to(@auth.email, '/login', :method => :delete, :remote => true, :class => 'button radius alert')}<li>"
    else
      nav += "<li>#{link_to('Register', new_user_path, :remote => true, :class => 'button radius alert')}</li>"
      nav += "<li><a href='/login' data-dropdown='drop1' class='button radius alert' data-remote='true'>Login</a></li>
              <ul id='drop1' class='f-dropdown content' data-dropdown-content>
                <li id='form'>#{ render :partial => 'session/form'}</li>
              </ul>"
    end
  end
end

