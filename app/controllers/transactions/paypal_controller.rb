class Transactions::PaypalController < ApplicationController
  def paypal_success
    @status=current_user.create_paypal(:status=>"paypal_success")
     redirect_to item_path(current_user)
  end
  def paypal_failure
    @status=current_user.create_paypal(:status=>"paypal_failure")
    redirect_to item_path(current_user)
  end
  def paypal_notify
    @status=current_user.create_paypal(:status=>"paypal_notify")
    redirect_to item_path(current_user)
  end
  
end
