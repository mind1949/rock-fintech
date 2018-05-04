# coding: utf-8
module RockFintech
  module Api
    module Asset
      module AssetsEnroll

        # 发标
        #
        # @return [ Hash ] 结果集
        #   * :result [String] "S"/"F"/"P"
        #   * :request_params [Hash] 请求参数
        #   * :response [Object] 请求返回对象
        #   * :code [String] 结果代码
        #   * :msg [String] 结果信息
        #   * :data: 具体业务返回信息
        #       * :asset_no [String] 标的编号
        #       * :asset_brief [String] 产品描述
        #       * :card_no [String] 借款人电子账号
        #       * :name [String] 借款金额
        #       * :loan_term [String] 项目期限
        #       * :issue_date [String] 发标日期
        #       * :state [String] 记录状态: (0: 空标, 1: 投标, 2: 流标, 3: 满标, 4: 已撤销)
        #       * :warrant_card_no [String] 担保人人电子账号
        #       * :warrant_name [String] 担保人姓名
        #       * :borrow_card_no [String] 名义借款人电子账户
        #       * :debtor_card_no [String] 收款人电子账号
        #       * :third_custom [String] 第三方平台保留域
        #
        def assets_enroll(asset_no, asset_brief, card_no,
                          amount, interest_type, loan_term,
                          interest_rate, trustee_pay_flag, warrant_card_no="",
                          debtor_card_no="", borrow_card_no="", third_custom="",
                          devise='000001', remark='')

          service = 'assets_enroll'

          params = {
            asset_no: asset_no,
            asset_brief: asset_brief,
            card_no: card_no,
            amount: amount,
            interest_type: interest_type,
            loan_term: loan_term,
            interest_rate: interest_rate,
            warrant_card_no: warrant_card_no,
            borrow_card_no: borrow_card_no,
            debtor_card_no: debtor_card_no,
            trustee_pay_flag: trustee_pay_flag,
            third_custom: third_custom,
            client: devise,
            custom: remark,
          }

          res = operate_post(:operate, service, params, Http::ErrorCode::Asset.assets_enroll, ['RD000000'])

          res
        end

      end
    end
  end
end
