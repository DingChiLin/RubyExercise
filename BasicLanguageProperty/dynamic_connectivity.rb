class Quick_Union 

	def initialize(num)
		@num = num
		@dotList = *(0..num.to_i-1)
		@size = Array.new(num.to_i,1);
  end

	private 

	def root(p)
		until p == @dotList[p] do
			@dotList[p] = @dotList[@dotList[p]]
			p = @dotList[p] 
		end
		puts @size.inspect
		return p;
	end

	public 
	
	def union(p1,p2)
		root1 = root(p1)
		root2 = root(p2)

		if(root1 == root2)
			return
		end

		if(@size[root1] <= @size[root2])
			@dotList[p1] = root2
			@size[root2] += @size[root1]
		else	
			@dotList[p2] = root1
			@size[root1] += @size[root2]
		end

  end

	def find(p1,p2)
		return root(p1) == root(p2)
	end

end



f = File.open("DCData.txt", "r") 

qu = Quick_Union.new(f.gets);

f.each_line do |line|

	dots = line.split(" ")
  qu.union(dots[0].to_i,dots[1].to_i)

end
f.close

puts qu.find(ARGV[0].to_i,ARGV[1].to_i)













