def benchmark(&block)
  begin_time = Time.now
  block.call
  end_time = Time.now
  end_time - begin_time
 end




 def benchmark
  begin_time = Time.now
  yield
  end_time = Time.now
  end_time - begin_time
 end