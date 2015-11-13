require 'rails_helper'

RSpec.describe Link, type: :model do
  subject(:link) { Link.new }

  it { is_expected.to have_many(:comments) }
end
