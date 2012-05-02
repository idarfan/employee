classComplexQueries<ActiveRecord::Base
  defself.my_query
    # Notice how you can, and should, still sanitize params here     
    self.connection.execute(sanitize_sql(["select * from foo limit ?",10]))
  end
end

results =ComplexQueries.my_query
results.each_hash{|h| puts h.inspect}