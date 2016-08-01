class ReportsController < ApplicationController

def index
  @report = Report.find(params[:id])
  respond_to do |format|
      format.html
    format.pdf do
      render pdf: "report.pdf",
            template: "reports/index.pdf.erb",
            locals: {:report => @report}
    end

  end
end

end

