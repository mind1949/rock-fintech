# coding: utf-8
require 'spec_helper'

RSpec.describe '' do
  let(:card_no) { '86666882002000446801' }

  it '成功通讯' do
    res = client.sign_repayment_query(card_no, devise='000001', remark='')
    ap res
    expect(res[:result]).to eq "P"
  end
end
