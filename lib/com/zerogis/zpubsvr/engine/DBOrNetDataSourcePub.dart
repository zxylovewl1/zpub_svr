import 'DBOrNetDataSourcePubConstant.dart';
import 'method/AreaSvrDBMethodConstant.dart';
import 'method/AreaSvrNetMethodConstant.dart';

/*
 * 类描述：网络或者数据库
 * 作者：郑朝军 on 2019/5/10
 * 邮箱：1250393285@qq.com
 * 公司：武汉智博创享科技有限公司
 * 修改人：郑朝军 on 2019/5/10
 * 修改备注：
 */
class DBOrNetDataSourcePub implements DBOrNetDataSourcePubConstant
{
  AreaSvrDBMethodConstant mAreaSvrDBMethodConstant; // 表、点、线、面工作区数据库通用方法。

  AreaSvrNetMethodConstant mAreaSvrNetMethodConstant; // 表、点、线、面工作区网络通用方法。

  bool mNetOrDB; // 数据来源变量：区分是从数据库来的还是从网络层来的(true=网络，false数据库)

  DBOrNetDataSourcePub(AreaSvrDBMethodConstant areaSvrDBMethod,
      AreaSvrNetMethodConstant areaSvrNetMethod, bool dataSource)
  {
    mAreaSvrDBMethodConstant = areaSvrDBMethod;
    mAreaSvrNetMethodConstant = areaSvrNetMethod;
    mNetOrDB = dataSource;
  }

  @override
  Future add(int major, int minor, Map map)
  {
    if (mNetOrDB)
    {
      return mAreaSvrNetMethodConstant.add(major, minor, map);
    }
    else
    {
      return null;
    }
  }

  @override
  Future addWithId(int major, int minor, Map map)
  {
    if (mNetOrDB)
    {
      return mAreaSvrNetMethodConstant.addWithId(major, minor, map);
    }
    else
    {
      return null;
    }
  }

  @override
  Future adds(int major, int minor, String json)
  {
    if (mNetOrDB)
    {
      return mAreaSvrNetMethodConstant.adds(major, minor, json);
    }
    else
    {
      return null;
    }
  }

  @override
  Future delete(int major, int minor, Object id)
  {
    if (mNetOrDB)
    {
      return mAreaSvrNetMethodConstant.delete(major, minor, id);
    }
    else
    {
      return null;
    }
  }


  @override
  Future deleteEntity(int major, int minor, Object id)
  {
    if (mNetOrDB)
    {
      return mAreaSvrNetMethodConstant.deleteEntity(major, minor, id);
    }
    else
    {
      return null;
    }
  }

  @override
  Future deletes(int major, int minor, String ids)
  {
    if (mNetOrDB)
    {
      return mAreaSvrNetMethodConstant.deletes(major, minor, ids);
    }
    else
    {
      return null;
    }
  }

  @override
  Future getAtt(int major, int minor, int id)
  {
    if (mNetOrDB)
    {
      return mAreaSvrNetMethodConstant.getAtt(major, minor, id);
    }
    else
    {
      return null;
    }
  }

  @override
  Future getGraph(int major, int minor, String id)
  {
    if (mNetOrDB)
    {
      return mAreaSvrNetMethodConstant.getGraph(major, minor, id);
    }
    else
    {
      return null;
    }
  }

  @override
  Future getGraphs(int major, int minor, String ids)
  {
    if (mNetOrDB)
    {
      return mAreaSvrNetMethodConstant.getGraphs(major, minor, ids);
    }
    else
    {
      return null;
    }
  }

  @override
  Future getTopGraph(int major, int minor, String id)
  {
    if (mNetOrDB)
    {
      return mAreaSvrNetMethodConstant.getTopGraph(major, minor, id);
    }
    else
    {
      return null;
    }
  }

  @override
  Future lock(int major, int minor, String id, String lockid)
  {
    if (mNetOrDB)
    {
      return mAreaSvrNetMethodConstant.lock(major, minor, id, lockid);
    }
    else
    {
      return null;
    }
  }

  @override
  Future queryByPage(int major, int minor, Map<String, Object> fieldValues,
      int pageno, int pagesize)
  {
    if (mNetOrDB)
    {
      return mAreaSvrNetMethodConstant.queryByPage(
          major, minor, fieldValues, pageno, pagesize);
    }
    else
    {
      return null;
    }
  }

  @override
  Future queryByPageDefaultSize(int major, int minor,
      Map<String, Object> fieldValues, int pageno)
  {
    if (mNetOrDB)
    {
      return mAreaSvrNetMethodConstant.queryByPageDefaultSize(
          major, minor, fieldValues, pageno);
    }
    else
    {
      return null;
    }
  }

  @override
  Future queryByWin(int major, int minor, String coor)
  {
    if (mNetOrDB)
    {
      return mAreaSvrNetMethodConstant.queryByWin(major, minor, coor);
    }
    else
    {
      return null;
    }
  }

  @override
  Future querySql(int major, int minor, String keyno, String exp, String cols,
      String separator, String vals,
      {String orderby, int init, int pageno, int pagesize})
  {
    if (mNetOrDB)
    {
      return mAreaSvrNetMethodConstant.querySql(
          major,
          minor,
          keyno,
          exp,
          cols,
          separator,
          vals);
    }
    else
    {
      return null;
    }
  }

  @override
  Future queryUnion(int major, int minor, String tables, String exp,
      String cols, String types, String vals,
      {String orderby, String separator, int init, int pageno, int pagesize})
  {
    if (mNetOrDB)
    {
      return mAreaSvrNetMethodConstant.queryUnion(
          major,
          minor,
          tables,
          exp,
          cols,
          types,
          vals,
          orderby: orderby,
          separator: separator,
          init: init,
          pageno: pageno,
          pagesize: pagesize);
    }
    else
    {
      return null;
    }
  }

  @override
  Future unlock(int major, int minor, String id, String lockid)
  {
    if (mNetOrDB)
    {
      return mAreaSvrNetMethodConstant.unlock(major, minor, id, lockid);
    }
    else
    {
      return null;
    }
  }

  @override
  Future updateAngle(int major, int minor, String id, String ang)
  {
    if (mNetOrDB)
    {
      return mAreaSvrNetMethodConstant.updateAngle(major, minor, id, ang);
    }
    else
    {
      return null;
    }
  }

  @override
  Future updateAtt(int major, int minor, String id, String cols)
  {
    if (mNetOrDB)
    {
      return mAreaSvrNetMethodConstant.updateAtt(major, minor, id, cols);
    }
    else
    {
      return null;
    }
  }

  @override
  Future updateAtts(int major, int minor, String ids, String separator, Map map)
  {
    if (mNetOrDB)
    {
      return mAreaSvrNetMethodConstant.updateAtts(
          major, minor, ids, separator, map);
    }
    else
    {
      return null;
    }
  }

  @override
  Future updateCoor(int major, int minor, String id, String coor)
  {
    if (mNetOrDB)
    {
      return mAreaSvrNetMethodConstant.updateCoor(major, minor, id, coor);
    }
    else
    {
      return null;
    }
  }

  @override
  Future updateMap(int major, int minor, String id, String layer, String map)
  {
    if (mNetOrDB)
    {
      return mAreaSvrNetMethodConstant.updateMap(major, minor, id, layer, map);
    }
    else
    {
      return null;
    }
  }

  @override
  Future updateZTCoor(int major, int minor, String ztid)
  {
    if (mNetOrDB)
    {
      return mAreaSvrNetMethodConstant.updateZTCoor(major, minor, ztid);
    }
    else
    {
      return null;
    }
  }

  @override
  Future addGra(int major, int minor, String coor)
  {
    if (mNetOrDB)
    {
      return mAreaSvrNetMethodConstant.addGra(major, minor, coor);
    }
    else
    {
      return null;
    }
  }

  @override
  Future addGraWithId(int major, int minor, String coor, int id)
  {
    if (mNetOrDB)
    {
      return mAreaSvrNetMethodConstant.addGraWithId(major, minor, coor, id);
    }
    else
    {
      return null;
    }
  }

  @override
  Future delpnt(int major, int minor, int id)
  {
    if (mNetOrDB)
    {
      return mAreaSvrNetMethodConstant.delpnt(major, minor, id);
    }
    else
    {
      return null;
    }
  }

  @override
  Future getGraphsByRange(int major, int minor, int gtype, int gr, int r,
      String xy)
  {
    if (mNetOrDB)
    {
      return mAreaSvrNetMethodConstant.getGraphsByRange(
          major, minor, gtype, gr, r, xy);
    }
    else
    {
      return null;
    }
  }

  @override
  Future getTableNum(int major, int minor, int id)
  {
    if (mNetOrDB)
    {
      return mAreaSvrNetMethodConstant.getTableNum(major, minor, id);
    }
    else
    {
      return null;
    }
  }

  @override
  Future getattgraph(int major, int minor, int id)
  {
    if (mNetOrDB)
    {
      return mAreaSvrNetMethodConstant.getattgraph(major, minor, id);
    }
    else
    {
      return null;
    }
  }

  @override
  Future getattgraphs(int major, int minor, String ids)
  {
    if (mNetOrDB)
    {
      return mAreaSvrNetMethodConstant.getattgraphs(major, minor, ids);
    }
    else
    {
      return null;
    }
  }

  @override
  Future getpnttop(int major, int minor, int id)
  {
    if (mNetOrDB)
    {
      return mAreaSvrNetMethodConstant.getpnttop(major, minor, id);
    }
    else
    {
      return null;
    }
  }

  @override
  Future inserts(int major, int minor, String id, String _rcdnum,
      {String separator})
  {
    if (mNetOrDB)
    {
      return mAreaSvrNetMethodConstant.inserts(major, minor, id, _rcdnum);
    }
    else
    {
      return null;
    }
  }

  @override
  Future movpnt(int major, int minor, int id, String coor)
  {
    if (mNetOrDB)
    {
      return mAreaSvrNetMethodConstant.movpnt(major, minor, id, coor);
    }
    else
    {
      return null;
    }
  }

  @override
  Future query(String exp, String types, String vals,
      {String cols, String orderby, String separator, int init, int pageno, int pagesize})
  {
    if (mNetOrDB)
    {
      return mAreaSvrNetMethodConstant.query(exp, types, vals,
          cols: cols,
          orderby: orderby,
          separator: separator,
          init: init,
          pagesize: pagesize,
          pageno: pageno);
    }
    else
    {
      return null;
    }
  }

  @override
  Future queryGra(int major, int minor, String exp, String types,
      String vals,
      {String cols, String separator})
  {
    if (mNetOrDB)
    {
      return mAreaSvrNetMethodConstant
          .queryGra(
          major, minor, exp, types, vals, cols: cols, separator: separator);
    }
    else
    {
      return null;
    }
  }

  @override
  Future updTopLin(int major, int minor, String line, int oldid, int newid,
      int delpnt)
  {
    if (mNetOrDB)
    {
      return mAreaSvrNetMethodConstant.updTopLin(
          major, minor, line, oldid, newid, delpnt);
    }
    else
    {
      return null;
    }
  }

  @override
  Future updateAttGra(int major, int minor, String cols, String coor)
  {
    if (mNetOrDB)
    {
      return mAreaSvrNetMethodConstant.updateAttGra(major, minor, cols, coor);
    }
    else
    {
      return null;
    }
  }

  @override
  Future explosion(int major, int minor, int dest, String invalid)
  {
    if (mNetOrDB)
    {
      return mAreaSvrNetMethodConstant.explosion(major, minor, dest, invalid);
    }
    else
    {
      return null;
    }
  }
}
