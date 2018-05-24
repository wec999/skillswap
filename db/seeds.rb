# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email: "william@william.com", password:"password")
User.create(email: "chelsea@chelsea.com", password:"password")
User.create(email: "valerie@valerie.com", password:"password")

SkillCategory.create(name: "music")
SkillCategory.create(name: "sports")
SkillCategory.create(name: "food")
SkillCategory.create(name: "tech")
SkillCategory.create(name: "business")

Skill.create(name: "guitar", skill_category_id: 1)
Skill.create(name: "violin", skill_category_id: 1)
Skill.create(name: "piano", skill_category_id: 1)
Skill.create(name: "flute", skill_category_id: 1)
Skill.create(name: "football", skill_category_id: 2)
Skill.create(name: "skiing", skill_category_id: 2)
Skill.create(name: "surfing", skill_category_id: 2)
Skill.create(name: "asian", skill_category_id: 3)
Skill.create(name: "french", skill_category_id: 3)

#MATCH 1 USER 1 AND 2
UserSkill.create(user_id: 1, skill_id: 1, mode: "learn")
UserSkill.create(user_id: 2, skill_id: 1, mode: "teach")

#MATCH 2 USER 2 AND 1
UserSkill.create(user_id: 2, skill_id: 2, mode: "learn")
UserSkill.create(user_id: 1, skill_id: 2, mode: "teach")

#MATCH 3 USER 3 AND 1

UserSkill.create(user_id: 3, skill_id: 1, mode: "teach")

#LONELY SKILL
UserSkill.create(user_id: 3, skill_id: 7, mode: "learn")


Match.create(teacher_skill_id: 2, student_skill_id: 1)
Match.create(teacher_skill_id: 4, student_skill_id: 3)
Match.create(teacher_skill_id: 5, student_skill_id: 1)


#MESSAGES IN MATCH 1
Message.create(content: "Amazing experience (message from the student)", user_id: 1, match_id: 1)
Message.create(content: "Amazing experience (message from the teacher)", user_id: 2, match_id: 1)
#MESSAGES IN MATCH 2
Message.create(content: "Amazing experience (message from the student)", user_id: 2, match_id: 2)
Message.create(content: "Amazing experience (message from the teacher)", user_id: 1, match_id: 2)
#MESSAGES IN MATCH 3
Message.create(content: "Amazing experience (message from the student)", user_id: 1, match_id: 3)
Message.create(content: "Amazing experience (message from the teacher)", user_id: 3, match_id: 3)

