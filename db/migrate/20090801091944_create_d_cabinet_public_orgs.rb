class CreateDCabinetPublicOrgs < ActiveRecord::Migration
  def self.up
    create_table :d_cabinet_public_orgs do |t|
      t.integer  :id,                                                             :default=>0, :null=>false
      t.integer  :d_cabinet_body_id
      t.integer  :org_cd,           :limit=>9,                                    :default=>0, :null=>false
      t.integer  :etcint1,                                                        :default=>0
      t.integer  :etcint2,                                                        :default=>0
      t.integer  :etcdec1,          :limit => 14,  :precision => 14, :scale => 0, :default => 0
      t.integer  :etcdec2,          :limit => 14,  :precision => 14, :scale => 0, :default => 0
      t.string   :etcstr1,          :limit=>200
      t.string   :etcstr2,          :limit=>200
      t.string   :etctxt1
      t.string   :etctxt2
      t.integer  :delf,             :limit=>2,                                    :default=>0
      t.string   :deleted_user_cd,  :limit => 32
      t.datetime :deleted_at
      t.string   :created_user_cd,  :limit => 32
      t.datetime :created_at
      t.string   :updated_user_cd,  :limit => 32
      t.datetime :updated_at
    end
  end

  def self.down
    drop_table :d_cabinet_public_orgs
  end
end
