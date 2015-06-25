class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new  # ログインしていない場合は、からユーザーを用意し判定に用いる
    
    cannot :read, Product

    if user.sys_admin?
      can :manage, :all
    end

    if user.product_manager?
      can :manage, Product, owner: user # 自分がオーナーの商品には全権限を持つ

      # 製品が格納されている倉庫の管理者なら、製品を更新できる
      # can :update, Product, stockpile: {owner_id: user.id}
    end
  end
end