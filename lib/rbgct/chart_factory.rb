module Rbgct

  class ChartFactory
    def self.[](type)
      case type
      when :line_chart
        Charts::LineChart
      when :pie_chart
        Charts::PieChart
      else
        raise NotImplementedError, "No ChartFactory class for type #{type || 'NULL'}"
      end
    end
  end

end