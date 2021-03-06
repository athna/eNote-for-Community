class CreateDCabinetBodies < ActiveRecord::Migration
  def self.up
    create_table "d_cabinet_bodies", :force => true do |t|
      t.integer  "d_cabinet_head_id",                                                                :null => false
      t.string   "post_org_cd",        :limit => 9
      t.string   "post_user_cd",       :limit => 32
      t.string   "post_user_name",     :limit => 40
      t.datetime "post_date"
      t.string   "title",              :limit => 40
      t.text     "body"
      t.string   "public_org_cd",      :limit => 9,                                  :default => "0"
      t.integer  "public_flg",         :limit => 2,                                  :default => 0
      t.date     "public_date_from"
      t.date     "public_date_to"
      t.text     "meta_tag"
      t.integer  "etcint1",                                                          :default => 0
      t.integer  "etcint2",                                                          :default => 0
      t.integer  "etcdec1",            :limit => 14,  :precision => 14, :scale => 0, :default => 0
      t.integer  "etcdec2",            :limit => 14,  :precision => 14, :scale => 0, :default => 0
      t.string   "etcstr1",            :limit => 200
      t.string   "etcstr2",            :limit => 200
      t.text     "etctxt1"
      t.text     "etctxt2"
      t.integer  "delf",               :limit => 2,                                  :default => 0
      t.string   "deleted_user_cd",    :limit => 32
      t.datetime "deleted_at"
      t.string   "created_user_cd",    :limit => 32
      t.datetime "created_at"
      t.string   "updated_user_cd",    :limit => 32
      t.datetime "updated_at"
    end
    
    add_index "d_cabinet_bodies", ["d_cabinet_head_id"], :name => "idx_d_cabinet_bodies_1"
    add_index "d_cabinet_bodies", ["public_org_cd"], :name => "idx_d_cabinet_bodies_2"
    
  end
  
  def self.down
    drop_table :d_cabinet_bodies
  end
end
