#!/usr/bin/ruby
file = File.open("remaining-works.txt", "r");
outputFile = File.open("remaining-works-swift.txt", "r+")
while !file.eof?
  line = file.readline.split(';')
  artist = line[0]
  title = line[1]
  year = line[2]
  media = line[3]
  movement = line[4]

  if outputFile
    outputFile.syswrite("// #{artist}, #{title}, #{year}, #{media}, #{movement}\n
answer = Answer.init(title: \"#{title}\", artist: \"#{artist}\", year: \"#{year}\", media: \"#{media}\", metadata: \" none \", movement: \"#{movement}\" )\n
image = UIImage.init(named: \"#{title}\")\n
question = Question.init(questionText: \"\", image: image!, answer: answer)\n
        
self.questionAnswerArray.append(question) \n")
  end
end
