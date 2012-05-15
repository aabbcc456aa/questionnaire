#encoding : utf-8
module ApplicationHelper
  def postion(question)
    case question.answer2
    when "1"
      then "学生"
    when "2"
      then "公务员（职务：#{question.answer2_remark}）"
    when "3"
      then "公司职员"
    when "4"
      then "自由职业者 "
    when "5"
      then "全职太太 "
    when "6"
      then "其他（#{question.answer2_remark}）"
    end
  end
  
  def like(question)
    result = ""
    if(question.answer5.include? "1")
      result += "<div>味道不好吃</div>"
    end
    if(question.answer5.include?  "2")
     result += "<div>味道一般</div>"
    end
    if(question.answer5.include? "3")
      result += "<div>价格太贵</div>"
    end
    if(question.answer5.include? "4")
      result += "<div>量太少</div>"
    end
    if(question.answer5.include? "5")
      result += "<div>平时不太吃橡皮糖(喜欢吃：#{question.answer5_remark6}）</div>"
    end
    if(question.answer5.include?  "6")
      result += "<div>还是喜欢平时吃的橡皮糖平时喜欢吃</div>"
    end
    if(question.answer5.include?  "6")
      result += "<div>其他(#{question.answer5_remark7})</div>"
    end
    return result.html_safe
  end
end
