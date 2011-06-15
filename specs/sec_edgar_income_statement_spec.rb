# sec_edgar_income_statement_spec.rb

$LOAD_PATH << './lib'
$LOAD_PATH << './specs'
require 'sec_edgar'
require 'sec_edgar_financial_statement_shared' # shared examples foor SecEdgar::FinancialStatement

describe SecEdgar::IncomeStatement do

  let(:create_fin_stmt) {

    @bogus_filename = "/tmp/ao0gqq34q34g"
    @good_filename = "specs/testvectors/2010_03_31.html"

    @tenq = SecEdgar::QuarterlyReport.new
    @tenq.parse(@good_filename)
    @tenq.normalize

    @fin_stmt = @tenq.inc_stmt
  }

  it_should_behave_like 'SecEdgar::FinancialStatement'

end
 
