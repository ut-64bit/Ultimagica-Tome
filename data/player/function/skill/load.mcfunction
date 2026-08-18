#> player:skill/load
#
# 個別のスキル定義をplayer_manager:loadout registry.skillへ追加する。
# 効果はplayer:skill/<id>/applyに実装する。固有スキルと通常スキルで共用する。
#
# 定義形式:
# 表示名: ut_magic.skill.<id>
# descriptionにはホバー表示するテキストコンポーネントを指定する。
# skill_capacity_bonusを指定すると、クラス変更時のコスト上限検証にも加算される。
# data modify storage player_manager:loadout registry.skill append value {id:"spear_mastery",description:{text:"槍系の魔法を強化する",color:"gray"},cost:3,skill_capacity_bonus:0}

# タグ強化
data modify storage player_manager:loadout registry.skill append value {id:"spear_mastery",description:{text:"槍の攻撃を20%強化する",color:"gray"},cost:3}
data modify storage player_manager:loadout registry.skill append value {id:"tag_explosion_mastery",description:{text:"爆発のダメージを20%強化する",color:"gray"},cost:3}

# 系統強化（各系統の与ダメージ1.15倍）
data modify storage player_manager:loadout registry.skill append value {id:"school_saint_mastery",description:{text:"退魔の奇跡の攻撃を15%強化する",color:"gray"},cost:2}
data modify storage player_manager:loadout registry.skill append value {id:"school_holy_mastery",description:{text:"聖教会の祈祷の攻撃を15%強化する",color:"gray"},cost:2}
data modify storage player_manager:loadout registry.skill append value {id:"school_star_mastery",description:{text:"星詠みの魔術の攻撃を15%強化する",color:"gray"},cost:2}
data modify storage player_manager:loadout registry.skill append value {id:"school_crystal_mastery",description:{text:"結晶魔術の攻撃を15%強化する",color:"gray"},cost:2}
data modify storage player_manager:loadout registry.skill append value {id:"school_gravity_mastery",description:{text:"重力魔術の攻撃を15%強化する",color:"gray"},cost:2}
data modify storage player_manager:loadout registry.skill append value {id:"school_fire_mastery",description:{text:"劫火の魔術の攻撃を15%強化する",color:"gray"},cost:2}
data modify storage player_manager:loadout registry.skill append value {id:"school_water_mastery",description:{text:"流水の魔術の攻撃を15%強化する",color:"gray"},cost:2}
data modify storage player_manager:loadout registry.skill append value {id:"school_thunder_mastery",description:{text:"ヴォルテミアの雷魔術の攻撃を15%強化する",color:"gray"},cost:2}
data modify storage player_manager:loadout registry.skill append value {id:"school_elf_mastery",description:{text:"森人の祈祷の攻撃を15%強化する",color:"gray"},cost:2}

# 属性強化（物理・聖を除く各属性の与ダメージ1.1倍）
data modify storage player_manager:loadout registry.skill append value {id:"element_magic_mastery",description:{text:"魔力属性の攻撃を10%強化する",color:"gray"},cost:2}
data modify storage player_manager:loadout registry.skill append value {id:"element_fire_mastery",description:{text:"炎属性の攻撃を10%強化する",color:"gray"},cost:2}
data modify storage player_manager:loadout registry.skill append value {id:"element_water_mastery",description:{text:"水属性の攻撃を10%強化する",color:"gray"},cost:2}
data modify storage player_manager:loadout registry.skill append value {id:"element_wind_mastery",description:{text:"風属性の攻撃を10%強化する",color:"gray"},cost:2}
data modify storage player_manager:loadout registry.skill append value {id:"element_thunder_mastery",description:{text:"雷属性の攻撃を10%強化する",color:"gray"},cost:2}
data modify storage player_manager:loadout registry.skill append value {id:"element_light_mastery",description:{text:"光属性の攻撃を10%強化する",color:"gray"},cost:2}

# コスト上限拡張
data modify storage player_manager:loadout registry.skill append value {id:"capacity_expansion",description:{text:"スキルコスト上限が1増えるが、被ダメージが20%上昇する",color:"gray"},cost:0,skill_capacity_bonus:1}
