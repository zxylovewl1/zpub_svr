import 'DBOrNetDataSourcePubConstant.dart';
import 'method/AreaSvrNetMethodConstant.dart';

/*
 * 类描述：
 * 作者：郑朝军 on 2019/5/10
 * 邮箱：1250393285@qq.com
 * 公司：武汉智博创享科技有限公司
 * 修改人：郑朝军 on 2019/5/10
 * 修改备注：
 */
abstract class DataSoucreEngineConstant
{
  /*
   * 获取 表、点、线、面工作区网络通用方法。
   * @return
   */
  AreaSvrNetMethodConstant getAreaSvrNetMethodConstant();

  /*
   * 获取 数据库或者网络通用的数据源
   */
  DBOrNetDataSourcePubConstant getDbOrNetDataSourcePubConstant();
}
