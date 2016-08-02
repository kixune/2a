module SessionsHelper

  def log_in(rockhound)
    session[:rockhound_id] = rockhound.id
  end

  def remember(rockhound)
    rockhound.remember
    cookies.permanent.signed[:rockhound_id] = rockhound.id
    cookies.permanent[:remember_token] = rockhound.remember_token
  end

  def current_rockhound
    if (rockhound_id = session[:rockhound_id])
      @current_rockhound ||= Rockhound.find_by(id: rockhound_id)
    elsif (rockhound_id = cookies.signed[:rockhound_id])
      rockhound = Rockhound.find_by(id: rockhound_id)
      if rockhound && rockhound.authenticated?(cookies[:remember_token])
        log_in rockhound
        @current_rockhound = rockhound
      end
    end
  end

  def current_rockhound?(rockhound)
    rockhound == current_rockhound
  end

  def logged_in?
    current_rockhound
  end

  def forget (rockhound)
    rockhound.forget
    cookies.delete(:rockhound_id)
    cookies.delete(:remember_token)
  end

  def log_out
    forget(current_rockhound)
    session.delete(:rockhound_id)
    @current_rockhound = nil
  end

end
