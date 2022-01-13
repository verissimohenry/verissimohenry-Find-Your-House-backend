require 'spec_helper'
require 'rails_helper'
module RequestSpecHelper
  # Parse JSON response to ruby hash
  def json
    JSON.parse(response.body)
  end
end
