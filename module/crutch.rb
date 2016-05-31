
#arel-6.0.3
#"C:\Ruby22-x64\lib\ruby\gems\2.2.0\gems\arel-6.0.3\lib\arel\visitors\to_sql.rb"

class Arel::Visitors::ToSql
  def visit_Arel_Nodes_SelectCore o, collector
    collector << "SELECT"
    
    collector = maybe_visit o.top, collector

    collector = maybe_visit o.set_quantifier, collector

    unless o.projections.empty?
      collector << SPACE
      len = o.projections.length - 1
      o.projections.each_with_index do |x, i|
        collector = visit(x, collector)
        collector << COMMA unless len == i
      end
    end

    if o.source && !o.source.empty?
      collector << " FROM "
      #ааа, какое то извращение, оно когда нибудь сломается!
      x = visit o.source, []
      r = []
      #p "-" * 32
      #p x
      while x.any?
        #p x
        if x[0] == "LEFT OUTER JOIN " or x[0] == "INNER JOIN "
        #if x[0][/^.{,12}JOIN/]
          #p [x, x[0][/^.{,12}JOIN/], r]
          z = [x.shift]
          
          #while (x.any? and (a = x.shift) != "LEFT OUTER JOIN ")
          while (x.any? and (a = x.shift)[/^.{,12}JOIN/].nil?)
            
            z << a
          end
          r << z.join.strip.gsub(/\s{2,}/, " ").gsub(/([^a-z\`\=])\s([^a-z\`\=])/i){ $1 + $2 }
          x.unshift(a) if (a[/^.{,12}JOIN/]) or x.any?
        else
          r << x.shift
        end          
      end
      #p "-" * 32
      #p [x, r]
      #exit
      
      #вот тут могут быть проблемы(особенно тут, вообще могут быть везде в этой функции, ибо тут такая жесть...), ибо теперь непонятно какой из джойнов остается
      zz = r.map{ |v| v.scan(/JOIN(.*$)/).first }
      zz = zz.map.with_index{ |v, i| v if zz.index(v) != i }
      r = r.map.with_index{ |v, i| v if zz[i].nil? }.compact
      
      collector << r.compact.uniq.join(" ")
      #collector = visit o.source, collector
    end

    unless o.wheres.empty?
      collector << WHERE
      len = o.wheres.length - 1
      o.wheres.each_with_index do |x, i|
        collector = visit(x, collector)
        collector << AND unless len == i
      end
    end

    unless o.groups.empty?
      collector << GROUP_BY
      len = o.groups.length - 1
      o.groups.each_with_index do |x, i|
        collector = visit(x, collector)
        collector << COMMA unless len == i
      end
    end

    collector = maybe_visit o.having, collector

    unless o.windows.empty?
      collector << WINDOW
      len = o.windows.length - 1
      o.windows.each_with_index do |x, i|
        collector = visit(x, collector)
        collector << COMMA unless len == i
      end
    end

    collector

  
  end
end


#activerecord-4.2.6
#"C:\Ruby22-x64\lib\ruby\gems\2.2.0\gems\activerecord-4.2.6\lib\active_record\associations\alias_tracker.rb"

class ActiveRecord::Associations::AliasTracker
  def aliased_table_for(table_name, aliased_name)
  
    #тут изменил,теперь OON
    if true
    #if aliases[table_name].zero?
      # If it's zero, we can have our table_name
      aliases[table_name] = 1
      Arel::Table.new(table_name)
    else
      # Otherwise, we need to use an alias
      aliased_name = connection.table_alias_for(aliased_name)

      # Update the count
      aliases[aliased_name] += 1

      table_alias = if aliases[aliased_name] > 1
        "#{truncate(aliased_name)}_#{aliases[aliased_name]}"
      else
        aliased_name
      end
      Arel::Table.new(table_name).alias(table_alias)
    end
  end
end