desc 'Create hello-rake.txt'
task :testfile do
  open('hello-rake.txt', 'w'){|f|
    f.write('Hello rake world')
  }
end