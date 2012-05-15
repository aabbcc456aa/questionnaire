#encoding : utf-8
class Question < ActiveRecord::Base
  attr_accessible :answer1, :answer2, :answer2_remark,
    :answer3_citynum, :answer3_phonenum, :answer3_extennum, :answer4_username,
    :answer4_service, :answer5, :answer5_remark6, :answer5_remark7
  
  validate :answer2_remark_must_presence
  validate :answer1_must_11
  validates_presence_of :answer2 ,:message => "请选择"
  validates_presence_of :answer5_remark6, :if => proc{|t| t.answer5.include?("6") } ,:message => "请在备注框内填写文字"
   validates_presence_of :answer5_remark7, :if => proc{|t| t.answer5.include?("7") } ,:message => "请在备注框内填写文字"
#  validates_presence_of :answer2_remark, :if => proc{|t| t.answer2 == "6" ||t.answer2 == "2" } ,:message => "请在备注框内填写文字"
  validates_length_of :answer3_phonenum, :minimum=> 7, :maximum => 11, :message => "区号请输入7个以上11个以内文字"
  validates_length_of :answer3_citynum, :minimum=> 3, :maximum => 5, :message => "主机号请输入3个以上5个以内文字"
  validates_format_of :answer4_username, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :message => '邮箱格式不正确'
  
  def answer2_remark_must_presence
    self.errors.add(:answer2_remark, "请在备注框内填写文字") if self.answer2_remark.blank? && (self.answer2 == "6" || self.answer2 == "2") 
  end

  def answer1_must_11
    puts "-------"
    puts self.answer1 == "十一"
    self.errors.add(:answer1, "") if self.answer1 != "十一"
  end
end
