module SessionsHelper

  def log_in(rockhound)
    session[:rockhound_id] = rockhound.id
  end

  def current_rockhound
    @current_rockhound ||= Rockhound.find_by(id: session[:rockhound_id])
  end

  def current_rockhound?
    rockhound == current_rockhound
  end

  def logged_in?
    current_rockhound
  end

  def log_out
    session.delete(:rockhound_id)
    @current_rockhound = nil
  end

end
