class LoginController < ApplicationController
  URL = "https://api.weixin.qq.com/sns/jscode2session".freeze

  def wechat_user
    params = {
      appId: env["APP_ID"],
      secret: env["APP_SECRET"],
      js_code: params[:code],
      grant_type: authorization_code
    }

    @wechat_response ||= RestClient.get(URL, params: params)
    @wechat_user ||= JSON.parse(@wechat_response.body)
  end

  def login
    @user = User.find_or_create_by(open_id: wechat_user.fetch("openid"))
    render json: {
      userId: @user.id
    }
  end


end
