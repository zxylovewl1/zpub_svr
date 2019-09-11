
import 'package:zpub_dbmanager/com/zerogis/zpubDbManager/manager/DBEntityManagerConstant.dart';
import 'package:zpub_dbmanager/com/zerogis/zpubDbManager/manager/EntityManagerConstant.dart';
import 'package:zpub_dbmanager/com/zerogis/zpubDbManager/manager/FldManagerConstant.dart';
import 'package:zpub_dbmanager/com/zerogis/zpubDbManager/manager/FldValuesManagerConstant.dart';

import 'DBOrNetDataSourcePub.dart';
import 'DBOrNetDataSourcePubConstant.dart';
import 'DataSoucreEngineConstant.dart';
import 'method/AreaSvrDBMethod.dart';
import 'method/AreaSvrDBMethodConstant.dart';
import 'method/AreaSvrNetMethod.dart';
import 'method/AreaSvrNetMethodConstant.dart';

/*
 * 类描述：数据源的引擎类<br/>
 * 1:兼容网络层，本地（数据库层），内存<br/>
 * 2：各个模块取数据只需要调用这个<br/>
 * 作者：郑朝军 on 2018/7/27
 * 邮箱：1250393285@qq.com
 * 公司：武汉智博创享科技有限公司
 * 修改人：郑朝军 on 2018/7/27
 * 修改备注：
 */
class DataSourceEngine implements DataSoucreEngineConstant
{
  static DataSourceEngine mDataSourceEngine; // 数据源引擎类

  AreaSvrDBMethodConstant mAreaSvrDBMethodConstant; // 表、点、线、面工作区数据库通用方法。

  AreaSvrNetMethodConstant mAreaSvrNetMethodConstant; // 表、点、线、面工作区网络通用方法。

  bool mNetOrDB; // 数据来源变量：区分是从数据库来的还是从网络层来的(true=网络，false数据库)

  EntityManagerConstant mEntityManagerConstant; // 实体做方法的封装(内存)

  DBEntityManagerConstant mDbEntityManagerConstant; // 实体做方法的封装(本地数据库)

  FldManagerConstant mFldManagerConstant; // fld做方法的封装

  FldValuesManagerConstant mFldValuesManagerConstant; // fldvalue做方法的封装

  DBOrNetDataSourcePubConstant mDbOrNetDataSourcePubConstant;

  /*
   * 需要注意获取的该对象为静态对象
   *
   * @param applicationBase 全局的Application
   */
  static DataSourceEngine getInstance()
  {
    if (mDataSourceEngine == null)
    {
      mDataSourceEngine = new DataSourceEngine();
    }
    return mDataSourceEngine;
  }

  /*
   * 构造方法(数据源默认为true)
   */
  DataSourceEngine()
  {
    this.mNetOrDB = true;
    init();
  }

  /*
   * 初始化方法
   */
  void init()
  {
    initData();
  }

  /*
   * 初始化数据相关方法
   */
  void initData()
  {
    mAreaSvrDBMethodConstant = new AreaSvrDBMethod();
    mAreaSvrNetMethodConstant = new AreaSvrNetMethod();
    mDbOrNetDataSourcePubConstant = new DBOrNetDataSourcePub(
      mAreaSvrDBMethodConstant,
      mAreaSvrNetMethodConstant,
      mNetOrDB,
    );

//    mEntityManagerConstant =
//        new EntityManager(m_applicationBase.getEntityCfg());
//    mDbEntityManagerConstant =
//        new DBEntityManager(m_applicationBase.getEntityCfg());
//    mFldManagerConstant =
//        new FldManager(m_applicationBase.getFldCfg(), dateSourceNet);
//    mFldValuesManagerConstant =
//        new FldValuesManager(m_applicationBase.getFldValCfg(), dateSourceNet);
  }

  //------------以下为get，set方法----------------------------------------------------------
  AreaSvrDBMethodConstant getAreaSvrDBMethodConstant()
  {
    return mAreaSvrDBMethodConstant;
  }

  void setAreaSvrDBMethodConstant(AreaSvrDBMethodConstant areaSvrDBMethodConstant)
  {
    mAreaSvrDBMethodConstant = areaSvrDBMethodConstant;
  }

  AreaSvrNetMethodConstant getAreaSvrNetMethodConstant()
  {
    return mAreaSvrNetMethodConstant;
  }

  void setAreaSvrNetMethodConstant(AreaSvrNetMethodConstant areaSvrNetMethodConstant)
  {
    mAreaSvrNetMethodConstant = areaSvrNetMethodConstant;
  }

  EntityManagerConstant getEntityManagerConstant()
  {
    return mEntityManagerConstant;
  }

  FldManagerConstant getFldManagerConstant()
  {
    return mFldManagerConstant;
  }

  FldValuesManagerConstant getFldValuesManagerConstant()
  {
    return mFldValuesManagerConstant;
  }

  DBOrNetDataSourcePubConstant getDbOrNetDataSourcePubConstant()
  {
    return mDbOrNetDataSourcePubConstant;
  }

  void setbNetOrDB(bool bNetOrDB)
  {
    mNetOrDB = bNetOrDB;
  }

  bool getbNetOrDB()
  {
    return mNetOrDB;
  }
}
