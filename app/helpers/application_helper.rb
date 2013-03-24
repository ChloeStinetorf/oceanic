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
      # nav += "<li><a href='/users/new' data-dropdown='drop2' class='button radius small alert' data-remote='true'>Register</a></li>
      #         <ul id='drop2' class='f-dropdown content' data-dropdown-content>
      #           <li id='reg_form'>#{ render :partial => 'users/form'}</li>
      #         </ul>"
      nav += "<li><a href='/login' data-dropdown='drop1' class='button radius small alert' data-remote='true'>Login</a></li>
              <ul id='drop1' class='f-dropdown content' data-dropdown-content>
                <li id='login_form'>#{ render :partial => 'session/form'}</li>
              </ul>"
    end
  end
end

