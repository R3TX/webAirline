   include WashOut::SOAP

class OrigensController < ApplicationController

  soap_service namespace: 'urn:WashOut'
  
  def restful
    @ori = User.all
    render :json => @ori
    
  end

  soap_action "soap",
    :arg => {:id => :integer},
    :return => :string
  def soap
    @ori = Origen.find(params[:id])
    render :json => (@ori)
    
  end

end
