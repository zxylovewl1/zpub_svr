import 'package:dio/dio.dart';

/*
 * 类描述：表、点、线、面工作区网络通用方法。
 * 作者：郑朝军 on 2019/5/10
 * 邮箱：1250393285@qq.com
 * 公司：武汉智博创享科技有限公司
 * 修改人：郑朝军 on 2019/5/10
 * 修改备注：
 */
abstract class AreaSvrNetMethodConstant
{
  /*
   * 根据ID取图形信息
   *
   * @param major     主类型
   * @param minor     0
   * @param id        实体ID:举例：id = 1
   * @return
   */
  Future<Response<Object>> getGraph(int major, int minor, String id);

  /*
   * 根据ID取图形信息
   *
   * @param major     主类型
   * @param minor     0
   * @param ids        实体ID:举例：id = 1,2,3
   * @return
   */
  Future<Response<Object>> getGraphs(int major, int minor, String ids);

  /*
   * 根据条件分页取数据(exp=ID>0&pageno=1&pagesize=2)
   *
   * @param major       主类型
   * @param minor       0
   * @param fieldValues 查询列和值的map对象举例： map.put("namec", "%图形%");
   * @param pageno      页码
   * @param pagesize    每页数据条数
   */
  Future<Response<Object>> queryByPage(int major, int minor,
      Map<String, Object> fieldValues, int pageno, int pagesize);

  /*
   * 根据条件分页取数据(exp=ID>0&pageno=1&pagesize=2)
   *
   * @param major       主类型
   * @param minor       0
   * @param fieldValues 查询列和值的map对象举例： map.put("namec", "%图形%");
   * @param pageno      页码
   * @param pagesize    每页数据条数
   */
  Future<Response<Object>> queryByPageDefaultSize(int major, int minor,
      Map<String, Object> fieldValues, int pageno);

  /*
   * 取拓扑关系(图形)
   *
   * @param serviceNo 服务号
   * @param major     主类型
   * @param minor     0
   * @param id        实体ID:举例：id = 1
   */
  Future<Response<Object>> getTopGraph(int major, int minor, String id);

  /*
   * 取拓扑关系(图形)
   *
   * @param serviceNo 服务号
   * @param major     主类型
   * @param minor     0
   * @param coor      坐标序列 (xmin,ymin,xmax,ymax):举例：coor =  -101,27,-99,29
   * 
   */
  Future<Response<Object>> queryByWin(int major, int minor, String coor);

  /*
   * 取属性
   *
   * @param serviceNo 服务号
   * @param major     主类型
   * @param minor     0
   * @param id        实体ID：举例：id= 0
   * @return
   * 
   */
  Future<Response<Object>> getAtt(int major,
      int minor,
      int id,);

  /*
   * 查询(支持条件/分页/部分列/排序等)
   * 联合查询方式
   * select a.uid,a.uname,a.upsw,a.urealname,a.utel,a.uremark, b.rid,b.rname,b.rremark,c.deptid,c.deptname,c.deptremark
   * from table1 a,table2 b,table3 c where a.sems_role_rid=b.rid and a.udeptid=c.deptid
   * 或者：
   * select a.uid,a.uname,a.upsw,a.urealname,a.utel,a.uremark, b.rid,b.rname,b.rremark,c.deptid,c.deptname,c.deptremark
   * from table1 a left join table2 b on  a.sems_role_rid=b.rid left join table3 c on a.udeptid=c.deptid
   *
   * @param major     主类型
   * @param minor     0
   * @param tables    条件表达式中用到的列      a;b:5,7;c:5,8     a:	代表主表别名（只有主表不需要指定主子类型）   b:5,7	 表别名b,对应的主类型5,子类型7
   * @param exp       实体ID：举例：id= 0
   * @param cols      需要取的列(用,分隔)（不传参数默认取全部列）
   * @param types     参数类型(用,分隔)(1/i/long-整数,2/r/double-实数,3/s/string-字符串,4/d/date-日期,5/t/datetime-日期时间)
   * @param vals      参数值(用,分隔)(与参数一一对应)
   * @param orderby   排序（可以不传）
   * @param separator 数值中的分隔符（可以不传,默认是,）(考虑到字符串中可能有,可以设置特别分隔符)
   * @param init      0/1 (首次调用为0, 非第一次为1)
   * @param pageno    页码(1开始)
   * @param pagesize  每页数据条数
   * 
   */
  Future<Response<Object>> queryUnion(int major,
      int minor,
      String tables,
      String exp,
      String cols,
      String types,
      String vals, {
        String orderby,
        String separator,
        int init,
        int pageno,
        int pagesize,
      });

  /*
   * 批量修改属性
   *
   * @param major 主类型
   * @param minor 0
   * @param separator   分隔符
   * @param exp   exp
   * @param keyno   exp
   *
   */
  Future<Response<Object>> querySql(int major,
      int minor,
      String keyno,
      String exp,
      String cols,
      String separator,
      String vals, {
        String orderby,
        int init,
        int pageno,
        int pagesize,
      });

  /*
   * 自定义列取数据(major=1&minor=1&map=1&ang=30&w=10&h=10&note=&layer=1&gl=0&prj=0&reg=0&coor=-100,29&z=453&flda=ABC)
   *
   * @param major 主类型
   * @param minor 0
   * @param map   举例：map.put("ang",30)等等
   * 
   */
  Future<Response<Object>> add(int major,
      int minor,
      Map map,);

/*
   * 自定义列取数据(major=1&minor=1&map=1&ang=30&w=10&h=10&note=&layer=1&gl=0&prj=0&reg=0&coor=-100,29&z=453&flda=ABC)
   *
   * @param major 主类型
   * @param minor 0
   * @param json  举例：json = {flda:a,fldb:b,fldc:c}
   * 
   */
  Future<Response<Object>> adds(int major,
      int minor,
      String json,);

  /*
   * 自定义列取数据(major=1&minor=1&map=1&ang=30&w=10&h=10&note=&layer=1&gl=0&prj=0&reg=0&coor=-100,29&z=453&flda=ABC)
   *
   * @param major 主类型
   * @param minor 0
   * @param map   举例：map.put("ang",30)等等
   *
   */
  Future<Response<Object>> addWithId(int major,
      int minor,
      Map map,);

  /*
   * 删除数据（major=1&minor=0&id=1）
   *
   * @param serviceNo 服务号
   * @param major     主类型
   * @param minor     0
   * @param id        实体ID
   * 
   */
  Future<Response<Object>> delete(int major,
      int minor,
      Object id);

  /*
   * 删除数据（major=1&minor=0&id=1）
   *
   * @param serviceNo 服务号
   * @param major     主类型
   * @param minor     0
   * @param id        实体ID
   *
   */
  Future<dynamic> deleteEntity(int major,
      int minor,
      Object id,);

  /*
   * 删除数据（major=1&minor=0&id=1）
   *
   * @param serviceNo 服务号
   * @param major     主类型
   * @param minor     0
   * @param ids       实体列表
   *
   */
  Future<Response<Object>> deletes(int major,
      int minor,
      String ids,);

  /*
   * 更改坐标(major=1&minor=0&id=3&coor=-99.9,28.01)
   *
   * @param serviceNo 服务号
   * @param major     主类型
   * @param minor     0
   * @param id        实体ID
   * @param coor      坐标信息	(x,y)
   * 
   */
  Future<Response<Object>> updateCoor(int major,
      int minor,
      String id,
      String coor,);

  /*
   * 更改坐标(major=1&minor=0&id=3&coor=-99.9,28.01)
   *
   * @param serviceNo 服务号
   * @param major     主类型
   * @param minor     0
   * @param ztid      实体ID
   *
   */
  Future<Response<Object>> updateZTCoor(int major,
      int minor,
      String ztid,);

  /*
   * 更改图形(major=1&minor=0&id=3&layer=2&map=3)
   *
   * @param serviceNo 服务号
   * @param major     主类型
   * @param minor     0
   * @param id        实体ID
   * @param layer     图层
   * @param map       图形参数
   * 
   */
  Future<Response<Object>> updateMap(int major,
      int minor,
      String id,
      String layer,
      String map,);

  /*
   * 更改角度(major=1&minor=0&id=3&ang=3.14)
   *
   * @param serviceNo 服务号
   * @param major     主类型
   * @param minor     0
   * @param id        实体ID
   * @param ang       角度	(弧度)
   * 
   */
  Future<Response<Object>> updateAngle(int major,
      int minor,
      String id,
      String ang,);

  /*
   * 修改属性(major=1&_minor=1&id=1&fld=A&fldb=B)
   *
   * @param major 主类型
   * @param minor 0
   * @param id    举例：id = 1
   * @param cols  如果只想更新部分列，可以用这个参数指明需要更新的列名(,分隔)
   * 
   */
  Future<Response<Object>> updateAtt(int major, int minor, String id,
      String cols);

  /*
   * 修改属性(major=1&_minor=1&ids=1,2,3&separator=,&disporder=9,8,7)
   *
   * @param major     主类型
   * @param minor     0
   * @param ids       实体ID列表，每个ID之间用分隔符隔开
   * @param separator 分隔符
   * @param map       map.put("ang",30)等等
   * 
   */
  Future<Response<Object>> updateAtts(int major,
      int minor,
      String ids,
      String separator,
      Map map,);

  /*
   * 实体加锁(major=1&minor=0&id=1&lockid=1)
   *
   * @param major  主类型
   * @param minor  0
   * @param id     实体ID列表
   * @param lockid 加锁ID
   * 
   */
  Future<Response<Object>> lock(int major,
      int minor,
      String id,
      String lockid,);

  /*
   * 实体加锁(major=1&_minor=0&id=1&lockid=1)
   *
   * @param major  主类型
   * @param minor  0
   * @param id     实体ID列表
   * @param lockid 加锁ID
   * 
   */
  Future<Response<Object>> unlock(int major,
      int minor,
      String id,
      String lockid,);

  /*
   * 属性查询(支持条件/分页/部分列/排序等)
   *
   * @param _exp:			SQL条件表达式(参数使用?代替)
   * @param cols:			需要取的列(用,分隔)（不传参数默认取全部列）
   * @param types:		参数类型(用,分隔)(1/i/long-整数,2/r/double-实数,3/s/string-字符串,4/d/date-日期,5/t/datetime-日期时间)
   * @param  vals:		参数值(用,分隔)(与参数一一对应)
   * @param orderby:		排序（可以不传）
   * @param separator:		数值中的分隔符（可以不传,默认是,）(考虑到字符串中可能有,可以设置特别分隔符)
      以下参数用于分页，如果不分页则不传递参数:
   * @param init:		0/1 (首次调用为0, 非第一次为1)
   * @param pageno:		页码(1开始)
   * @param pagesize:		每页数据条数
   *
   */
  Future<Response<Object>> query(String exp,
      String types,
      String vals, {
        String cols,
        String orderby,
        String separator,
        int init,
        int pageno,
        int pagesize,
      });

  /*
   * 批量增加数据
   * 属性信息(根据属性字段，记录直接用分隔符分开)
   * @param major  主类型
   * @param minor  0
   * @param id     实体ID列表
   * @param _rcdnum 增加的记录数量
   * @param lockid 分隔符(默认值是,)
   *
   */
  Future<Response<Object>> inserts(int major, int minor, String id,
      String _rcdnum,
      {String separator});

  /*
   * 获取表的行数(AreaSvr?cmd= getTableNum&_major=5&_minor=1)
   * 属性信息(根据属性字段，记录直接用分隔符分开)
   * @param major  主类型
   * @param minor  0
   *
   */
  Future<Response<Object>> getTableNum(int major, int minor, int id);

  /*
   * 根据ID取图形+属性
   * @param major  主类型
   * @param minor  0
   */
  Future<Response<Object>> getattgraph(int major, int minor, int id);

  /*
   * 根据ID列表取多个图形
   * @param major  主类型
   * @param minor  0
   */
  Future<Response<Object>> getattgraphs(int major, int minor, String ids);

  /*
   * 根据范围查询图形信息
   * @param major  主类型
   * @param minor  0
   * @param gtype  图形的类型：1 点 2 线 3 矩形 4 圆形 5 多边形
   * @param gr     圆的半径
   * @param r      缓冲区半径
   * @param xy     坐标串
   */
  Future<Response<Object>> getGraphsByRange(int major, int minor, int gtype,
      int gr, int r, String xy);

  /*
   * 图形查询(支持条件/部分列等)
   * @param major  主类型
   * @param minor  0
   * @param _exp:			SQL条件表达式(参数使用?代替)
   * @param types:		参数类型(用,分隔)(1/i/long-整数,2/r/double-实数,3/s/string-字符串,4/d/date-日期,5/t/datetime-日期时间)
   * @param vals:		参数值(用,分隔)(与参数一一对应)
   * @param separator:		数值中的分隔符（可以不传,默认是,）(考虑到字符串中可能有,可以设置特别分隔符)
   * @param [cols]:			需要取的列(用,分隔)（不传参数默认取全部列）
   *  不支持分页
   *  不支持排序
   */
  Future<Response<Object>> queryGra(int major,
      int minor,
      String exp,
      String types,
      String vals, {
        String cols,
        String separator,
      });

  /*
   * 增加图形
   * @param major  主类型
   * @param minor  0
   * @param coor:			坐标信息	(x1,y1,x2,y2,…)
   */
  Future<Response<Object>> addGra(int major, int minor, String coor);

  /*
   * 增加图形(自带图形ID)
   * @param major  主类型
   * @param minor  0
   * @param id     0
   * @param coor:			坐标信息	(x1,y1,x2,y2,…)
   */
  Future<Response<Object>> addGraWithId(int major, int minor, String coor,
      int id);

  /*
   * 修改属性
   * @param major  主类型
   * @param minor  0
   * @param coor:			坐标信息	(x1,y1,x2,y2,…)
   * @param cols:			如果只想更新部分列，可以用这个参数指明需要更新的列名(,分隔)
   */
  Future<Response<Object>> updateAttGra(int major, int minor, String cols,
      String coor);

  /*
   * 删除网络点及其相关联的线(NetworkSvr?cmd=delpnt&_major=1&_minor=1&id=3023)
   * @param major  主类型
   * @param minor  0
   * @param id 
   */
  Future<Response<Object>> delpnt(int major, int minor, int id);

  /*
   * 移动网络点及其相关联的线(NetworkSvr?cmd=movpnt&_major=1&_minor=1&id=3023&coor=123.04,345.09)
   * @param major  主类型
   * @param minor  0
   * @param id
   * @param coor 新坐标
   * @retrun linid:			[]		被移动的线ID列表
   */
  Future<Response<Object>> movpnt(int major, int minor, int id, String coor);

  /*
   * 修改线的拓扑关系(把线的前后点修改到新的点)(NetworkSvr?cmd=updTopLin&_major=2&_minor=0&id=3023
   * &line=23,2,3;24,3,4&oldid=2&newid=4&delpnt=1)
   * @param major  主类型
   * @param minor  0
   * @param  line:			id1,fntid,talid;id2,fntid,talid
      1)用;分开每条线的数据
      2)每条线数据用,分隔开，依次是：线ID,线前点,线后点
   * @param  oldid:			旧点ID
   * @param newid:			新点ID
   * @param delpnt:			是否删除旧点，0-不删除，非0-删除
   */
  Future<Response<Object>> updTopLin(int major, int minor, String line,
      int oldid, int newid, int delpnt);

  /*
   * 取点拓扑关系(NetworkSvr?cmd=getpnttop&_major=1&_minor=0&id=1)
   * @param major  主类型
   * @param minor  0
   * @param  id 点ID
   */
  Future<Response<Object>> getpnttop(int major, int minor, int id);

  /*
   * 爆管分析(NetworkSvr?cmd=explosion&_major=2&_minor=2&id=1&dest=2&invalid=23,34)
   * @param major  主类型
   * @param minor  0
   * @param  id 线ID
   * @param dest:			目标点类型列表
   * @param invalid:			无效点列表
   */
  Future<Response<Object>> explosion(int major, int minor, int dest,
      String invalid);

//  Future<Response<Object>> adjacent(int major, int minor);
//
//  Future<Response<Object>> shortestpath(int major, int minor);
//
//  Future<Response<Object>> sectioncross(int major, int minor);
}
