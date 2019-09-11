import 'package:dio/dio.dart';
import 'package:path/path.dart';
import 'package:zpub_http/com/zerogis/zpubhttp/constant/HttpKeyValueConstant.dart';
import 'package:zpub_bas/com/zerogis/zpubbase/constant/StringValueConstant.dart';
import 'package:zpub_http/zpub_http.dart';
import 'package:zpub_bas/zpub_bas.dart';
import 'package:zpub_svr/com/zerogis/zpubsvr/constant/HttpParamKeyValue.dart';

import 'AreaSvrNetMethodConstant.dart';

/*
 * 类描述：表、点、线、面工作区网络通用方法。
 * 作者：郑朝军 on 2019/5/10
 * 邮箱：1250393285@qq.com
 * 公司：武汉智博创享科技有限公司
 * 修改人：郑朝军 on 2019/5/10
 * 修改备注：
 */
class AreaSvrNetMethod implements AreaSvrNetMethodConstant
{
  Future<Response<Object>> getGraph(int major, int minor, String id)
  {
    HttpProtocol protocol = new HttpProtocol();
    return protocol
        .setMethod(HttpParamKeyValue.PARAM_KEY_METHOD_AreaSvr)
        .addParam(HttpParamKeyValue.PARAM_KEY_CMD,
        HttpParamKeyValue.PARAM_VALUE_GetGraph)
        .addParam(HttpParamKeyValue.PARAM_KEY_MAJOR, major)
        .addParam(HttpParamKeyValue.PARAM_KEY_MINOR, minor)
        .addParam(HttpParamKeyValue.PARAM_KEY_ID, id)
        .post();
  }

  @override
  Future<Response<Object>> getGraphs(int major, int minor, String ids)
  {
    HttpProtocol protocol = new HttpProtocol();
    return protocol
        .setMethod(HttpParamKeyValue.PARAM_KEY_METHOD_AreaSvr)
        .addParam(HttpParamKeyValue.PARAM_KEY_CMD,
        HttpParamKeyValue.PARAM_VALUE_GetGraph)
        .addParam(HttpParamKeyValue.PARAM_KEY_MAJOR, major)
        .addParam(HttpParamKeyValue.PARAM_KEY_MINOR, minor)
        .addParam(HttpParamKeyValue.PARAM_KEY_ID, ids)
        .post();
  }

  @override
  Future<Response<Object>> queryByPage(int major, int minor,
      Map<String, Object> fieldValues, int pageno, int pagesize)
  {
    HttpProtocol protocol = new HttpProtocol();
    return protocol
        .setMethod(HttpParamKeyValue.PARAM_KEY_METHOD_AreaSvr)
        .addParam(HttpParamKeyValue.PARAM_KEY_CMD,
        HttpParamKeyValue.PARAM_VALUE_QueryByPage)
        .addParam(HttpParamKeyValue.PARAM_KEY_MAJOR, major)
        .addParam(HttpParamKeyValue.PARAM_KEY_MINOR, minor)
        .addMap(fieldValues)
        .addPagerParam(pageno)
        .addParam(HttpKeyValueConstant.PARAM_PAGER_SIZE, pagesize)
        .post();
  }

  @override
  Future<Response<Object>> queryByPageDefaultSize(int major, int minor,
      Map<String, Object> fieldValues, int pageno)
  {
    HttpProtocol protocol = new HttpProtocol();
    return protocol
        .setMethod(HttpParamKeyValue.PARAM_KEY_METHOD_AreaSvr)
        .addParam(HttpParamKeyValue.PARAM_KEY_CMD,
        HttpParamKeyValue.PARAM_VALUE_QueryByPage)
        .addParam(HttpParamKeyValue.PARAM_KEY_MAJOR, major)
        .addParam(HttpParamKeyValue.PARAM_KEY_MINOR, minor)
        .addMap(fieldValues)
        .addPagerParam(pageno)
        .post();
  }

  @override
  Future<Response<Object>> getTopGraph(int major, int minor, String id)
  {
    HttpProtocol protocol = new HttpProtocol();
    return protocol
        .setMethod(HttpParamKeyValue.PARAM_KEY_METHOD_AreaSvr)
        .addParam(HttpParamKeyValue.PARAM_KEY_CMD,
        HttpParamKeyValue.PARAM_VALUE_GetTopGraph)
        .addParam(HttpParamKeyValue.PARAM_KEY_MAJOR, major)
        .addParam(HttpParamKeyValue.PARAM_KEY_MINOR, minor)
        .addParam(HttpParamKeyValue.PARAM_KEY_ID, id)
        .post();
  }

  @override
  Future<Response<Object>> queryByWin(int major, int minor, String coor)
  {
    HttpProtocol protocol = new HttpProtocol();
    return protocol
        .setMethod(HttpParamKeyValue.PARAM_KEY_METHOD_AreaSvr)
        .addParam(HttpParamKeyValue.PARAM_KEY_CMD,
        HttpParamKeyValue.PARAM_VALUE_QueryByWin)
        .addParam(HttpParamKeyValue.PARAM_KEY_MAJOR, major)
        .addParam(HttpParamKeyValue.PARAM_KEY_MINOR, minor)
        .addParam(HttpParamKeyValue.PARAM_KEY_ID, coor)
        .post();
  }

  @override
  Future<Response<Object>> add(int major, int minor, Map map)
  {
    HttpProtocol protocol = new HttpProtocol();
    return protocol
        .setMethod(HttpParamKeyValue.PARAM_KEY_METHOD_AreaSvr)
        .addParam(
        HttpParamKeyValue.PARAM_KEY_CMD, HttpParamKeyValue.PARAM_VALUE_Add)
        .addParam(HttpParamKeyValue.PARAM_KEY_MAJOR, major)
        .addParam(HttpParamKeyValue.PARAM_KEY_MINOR, minor)
        .addMap(map)
        .post();
  }

  @override
  Future<Response<Object>> adds(int major, int minor, String json)
  {
    HttpProtocol protocol = new HttpProtocol();
    return protocol
        .setMethod(HttpParamKeyValue.PARAM_KEY_METHOD_AreaSvr)
        .addParam(
        HttpParamKeyValue.PARAM_KEY_CMD, HttpParamKeyValue.PARAM_VALUE_Adds)
        .addParam(HttpParamKeyValue.PARAM_KEY_MAJOR, major)
        .addParam(HttpParamKeyValue.PARAM_KEY_MINOR, minor)
        .addParam(HttpParamKeyValue.PARAM_KEY_JSON, json)
        .post();
  }

  @override
  Future<Response<Object>> addWithId(int major, int minor, Map map)
  {
    HttpProtocol protocol = new HttpProtocol();
    return protocol
        .setMethod(HttpParamKeyValue.PARAM_KEY_METHOD_AreaSvr)
        .addParam(HttpParamKeyValue.PARAM_KEY_CMD,
        HttpParamKeyValue.PARAM_VALUE_AddWithId)
        .addParam(HttpParamKeyValue.PARAM_KEY_MAJOR, major)
        .addParam(HttpParamKeyValue.PARAM_KEY_MINOR, minor)
        .addMap(map)
        .post();
  }

  @override
  Future<Response<Object>> delete(int major, int minor, Object id)
  {
    HttpProtocol protocol = new HttpProtocol();
    return protocol
        .setMethod(HttpParamKeyValue.PARAM_KEY_METHOD_AreaSvr)
        .addParam(HttpParamKeyValue.PARAM_KEY_CMD,
        HttpParamKeyValue.PARAM_VALUE_Delete)
        .addParam(HttpParamKeyValue.PARAM_KEY_MAJOR, major)
        .addParam(HttpParamKeyValue.PARAM_KEY_MINOR, minor)
        .addParam(HttpParamKeyValue.PARAM_KEY_ID, id)
        .post();
  }


  @override
  Future<Response<Object>> deleteEntity(int major, int minor, Object id)
  {
    HttpProtocol protocol = new HttpProtocol();
    return protocol
        .setMethod(HttpParamKeyValue.PARAM_KEY_METHOD_DocSvr)
        .addParam(HttpParamKeyValue.PARAM_KEY_CMD,
        HttpParamKeyValue.PARAM_VALUE_DeleteEntity)
        .addParam("major", major)
        .addParam("minor", minor)
        .addParam(HttpParamKeyValue.PARAM_KEY_ENTITYID, id)
        .post();
  }

  @override
  Future<Response<Object>> deletes(int major, int minor, String ids)
  {
    HttpProtocol protocol = new HttpProtocol();
    return protocol
        .setMethod(HttpParamKeyValue.PARAM_KEY_METHOD_AreaSvr)
        .addParam(HttpParamKeyValue.PARAM_KEY_CMD,
        HttpParamKeyValue.PARAM_VALUE_Delete)
        .addParam(HttpParamKeyValue.PARAM_KEY_MAJOR, major)
        .addParam(HttpParamKeyValue.PARAM_KEY_MINOR, minor)
        .addParam(HttpParamKeyValue.PARAM_KEY_ID, ids)
        .post();
  }

  @override
  Future<Response<Object>> getAtt(int major, int minor, int id)
  {
    HttpProtocol protocol = new HttpProtocol();
    return protocol
        .setMethod(HttpParamKeyValue.PARAM_KEY_METHOD_AreaSvr)
        .addParam(HttpParamKeyValue.PARAM_KEY_CMD,
        HttpParamKeyValue.PARAM_VALUE_GetAtt)
        .addParam(HttpParamKeyValue.PARAM_KEY_MAJOR, major)
        .addParam(HttpParamKeyValue.PARAM_KEY_MINOR, minor)
        .addParam(HttpParamKeyValue.PARAM_KEY_ID, id)
        .post();
  }

  @override
  Future<Response<Object>> lock(int major, int minor, String id, String lockid)
  {
    HttpProtocol protocol = new HttpProtocol();
    return protocol
        .setMethod(HttpParamKeyValue.PARAM_KEY_METHOD_AreaSvr)
        .addParam(
        HttpParamKeyValue.PARAM_KEY_CMD, HttpParamKeyValue.PARAM_VALUE_Lock)
        .addParam(HttpParamKeyValue.PARAM_KEY_MAJOR, major)
        .addParam(HttpParamKeyValue.PARAM_KEY_MINOR, minor)
        .addParam(HttpParamKeyValue.PARAM_KEY_LOCK_ID, lockid)
        .post();
  }

  @override
  Future<Response<Object>> query(String exp,
      String types,
      String vals, {
        String cols,
        String orderby,
        String separator,
        int init,
        int pageno,
        int pagesize,
      })
  {
    HttpProtocol protocol = new HttpProtocol();
    if (pageno != null)
    {
      protocol.addPagerParam(pageno);
    }
    return protocol
        .setMethod(HttpParamKeyValue.PARAM_KEY_METHOD_AreaSvr)
        .addParam(HttpParamKeyValue.PARAM_KEY_CMD,
        HttpParamKeyValue.PARAM_VALUE_Query)
        .addParam(HttpParamKeyValue.PARAM_KEY_EXP, exp)
        .addParam(HttpParamKeyValue.PARAM_KEY_TYPES, types)
        .addParam(HttpParamKeyValue.PARAM_KEY_VALS, vals)
        .addParam(HttpParamKeyValue.PARAM_KEY_COLS, cols)
        .addParam(HttpParamKeyValue.PARAM_KEY_ORDERBY, orderby)
        .addParam(HttpParamKeyValue.PARAM_KEY_SEPARATOR, separator)
        .addParam(HttpKeyValueConstant.PARAM_PAGER_SIZE, pagesize)
        .post();
  }

  @override
  Future<Response<Object>> queryUnion(int major, int minor, String tables,
      String exp, String cols, String types, String vals,
      {String orderby,
        String separator,
        int init,
        int pageno,
        int pagesize})
  {
    HttpProtocol protocol = new HttpProtocol();
    if (pageno != null)
    {
      protocol.addPagerParam(pageno);
    }
    return protocol
        .setMethod(HttpParamKeyValue.PARAM_KEY_METHOD_AreaSvr)
        .addParam(HttpParamKeyValue.PARAM_KEY_CMD,
        HttpParamKeyValue.PARAM_VALUE_QueryUnion)
        .addParam(HttpParamKeyValue.PARAM_KEY_MAJOR, major)
        .addParam(HttpParamKeyValue.PARAM_KEY_MINOR, minor)
        .addParam(HttpParamKeyValue.PARAM_KEY_TABLES, tables)
        .addParam(HttpParamKeyValue.PARAM_KEY_EXP, exp)
        .addParam(HttpParamKeyValue.PARAM_KEY_COLS, cols)
        .addParam(HttpParamKeyValue.PARAM_KEY_TYPES, types)
        .addParam(HttpParamKeyValue.PARAM_KEY_VALS, vals)
        .addParam(HttpParamKeyValue.PARAM_KEY_ORDERBY, orderby)
        .addParam(HttpParamKeyValue.PARAM_KEY_SEPARATOR, separator)
        .addParam(HttpKeyValueConstant.PARAM_PAGER_SIZE, pagesize)
        .post();
  }

  @override
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
      })
  {
    HttpProtocol protocol = new HttpProtocol();
    if (pageno != null)
    {
      protocol.addPagerParam(pageno);
    }
    return protocol
        .setMethod(HttpParamKeyValue.PARAM_KEY_METHOD_AreaSvr)
        .addParam(HttpParamKeyValue.PARAM_KEY_CMD,
        HttpParamKeyValue.PARAM_VALUE_QueryUnion)
        .addParam(HttpParamKeyValue.PARAM_KEY_MAJOR, major)
        .addParam(HttpParamKeyValue.PARAM_KEY_MINOR, minor)
        .addParam(HttpParamKeyValue.PARAM_KEY_KEYNO, keyno)
        .addParam(HttpParamKeyValue.PARAM_KEY_EXP, exp)
        .addParam(HttpParamKeyValue.PARAM_KEY_COLS, cols)
        .addParam(HttpParamKeyValue.PARAM_KEY_SEPARATOR, separator)
        .addParam(HttpParamKeyValue.PARAM_KEY_VALS, vals)
        .addParam(HttpParamKeyValue.PARAM_KEY_ORDERBY, orderby)
        .addParam(HttpKeyValueConstant.PARAM_PAGER_SIZE, pagesize)
        .post();
  }

  @override
  Future<Response<Object>> unlock(int major, int minor, String id,
      String lockid)
  {
    HttpProtocol protocol = new HttpProtocol();
    return protocol
        .setMethod(HttpParamKeyValue.PARAM_KEY_METHOD_AreaSvr)
        .addParam(HttpParamKeyValue.PARAM_KEY_CMD,
        HttpParamKeyValue.PARAM_VALUE_UnLock)
        .addParam(HttpParamKeyValue.PARAM_KEY_MAJOR, major)
        .addParam(HttpParamKeyValue.PARAM_KEY_MINOR, minor)
        .addParam(HttpParamKeyValue.PARAM_KEY_LOCK_ID, lockid)
        .post();
  }

  @override
  Future<Response<Object>> updateAngle(int major, int minor, String id,
      String ang)
  {
    HttpProtocol protocol = new HttpProtocol();
    return protocol
        .setMethod(HttpParamKeyValue.PARAM_KEY_METHOD_AreaSvr)
        .addParam(HttpParamKeyValue.PARAM_KEY_CMD,
        HttpParamKeyValue.PARAM_VALUE_UpdateAngle)
        .addParam(HttpParamKeyValue.PARAM_KEY_MAJOR, major)
        .addParam(HttpParamKeyValue.PARAM_KEY_MINOR, minor)
        .addParam(HttpParamKeyValue.PARAM_KEY_ID, id)
        .addParam(HttpParamKeyValue.PARAM_KEY_ANG, ang)
        .post();
  }

  @override
  Future<Response<Object>> updateAtt(int major, int minor, String id,
      String cols)
  {
    HttpProtocol protocol = new HttpProtocol();
    return protocol
        .setMethod(HttpParamKeyValue.PARAM_KEY_METHOD_AreaSvr)
        .addParam(HttpParamKeyValue.PARAM_KEY_CMD,
        HttpParamKeyValue.PARAM_VALUE_UpdateAtt)
        .addParam(HttpParamKeyValue.PARAM_KEY_MAJOR, major)
        .addParam(HttpParamKeyValue.PARAM_KEY_MINOR, minor)
        .addParam(HttpParamKeyValue.PARAM_KEY_ID, id)
        .addParam(HttpParamKeyValue.PARAM_KEY_COLS, cols)
        .post();
  }

  @override
  Future<Response<Object>> updateAtts(int major, int minor, String ids,
      String separator, Map map)
  {
    HttpProtocol protocol = new HttpProtocol();
    String cols = "";
    map.forEach((key, value)
    {
      cols = join(cols, key + StringValueConstant.STR_COMMON_EQUEL + value);
    });
    cols.replaceAll(StringValueConstant.STR_COMMON_SLASH,
        StringValueConstant.STR_COMMON_COMMA);
    return protocol
        .setMethod(HttpParamKeyValue.PARAM_KEY_METHOD_AreaSvr)
        .addParam(HttpParamKeyValue.PARAM_KEY_CMD,
        HttpParamKeyValue.PARAM_VALUE_UpdateAtts)
        .addParam(HttpParamKeyValue.PARAM_KEY_MAJOR, major)
        .addParam(HttpParamKeyValue.PARAM_KEY_MINOR, minor)
        .addParam(HttpParamKeyValue.PARAM_KEY_SEPARATOR, separator)
        .addParam(HttpParamKeyValue.PARAM_KEY_ID,
        !CxTextUtil.isEmpty(cols) ? cols : null)
        .post();
  }

  @override
  Future<Response<Object>> updateCoor(int major, int minor, String id,
      String coor)
  {
    HttpProtocol protocol = new HttpProtocol();
    return protocol
        .setMethod(HttpParamKeyValue.PARAM_KEY_METHOD_AreaSvr)
        .addParam(HttpParamKeyValue.PARAM_KEY_CMD,
        HttpParamKeyValue.PARAM_VALUE_UpdateCoor)
        .addParam(HttpParamKeyValue.PARAM_KEY_MAJOR, major)
        .addParam(HttpParamKeyValue.PARAM_KEY_MINOR, minor)
        .addParam(HttpParamKeyValue.PARAM_KEY_ID, coor)
        .post();
  }

  @override
  Future<Response<Object>> updateMap(int major, int minor, String id,
      String layer, String map)
  {
    HttpProtocol protocol = new HttpProtocol();
    return protocol
        .setMethod(HttpParamKeyValue.PARAM_KEY_METHOD_AreaSvr)
        .addParam(HttpParamKeyValue.PARAM_KEY_CMD,
        HttpParamKeyValue.PARAM_VALUE_UpdateMap)
        .addParam(HttpParamKeyValue.PARAM_KEY_MAJOR, major)
        .addParam(HttpParamKeyValue.PARAM_KEY_MINOR, minor)
        .addParam(HttpParamKeyValue.PARAM_KEY_ID, id)
        .addParam(HttpParamKeyValue.PARAM_KEY_MAP, map)
        .addParam(HttpParamKeyValue.PARAM_KEY_LAYER, layer)
        .post();
  }

  @override
  Future<Response<Object>> updateZTCoor(int major, int minor, String z)
  {
    HttpProtocol protocol = new HttpProtocol();
    return protocol
        .setMethod(HttpParamKeyValue.PARAM_KEY_METHOD_AreaSvr)
        .addParam(HttpParamKeyValue.PARAM_KEY_CMD,
        HttpParamKeyValue.PARAM_VALUE_UpdateZTCoor)
        .addParam(HttpParamKeyValue.PARAM_KEY_MAJOR, major)
        .addParam(HttpParamKeyValue.PARAM_KEY_MINOR, minor)
        .addParam(HttpParamKeyValue.PARAM_KEY_ZTID, z)
        .post();
  }

  @override
  Future<Response<Object>> addGra(int major, int minor, String coor)
  {
    HttpProtocol protocol = new HttpProtocol();
    return protocol
        .setMethod(HttpParamKeyValue.PARAM_KEY_METHOD_AreaSvr)
        .addParam(HttpParamKeyValue.PARAM_KEY_CMD,
        HttpParamKeyValue.PARAM_VALUE_AddGra)
        .addParam(HttpParamKeyValue.PARAM_KEY_MAJOR, major)
        .addParam(HttpParamKeyValue.PARAM_KEY_MINOR, minor)
        .addParam(HttpParamKeyValue.PARAM_KEY_COOR, coor)
        .post();
  }

  @override
  Future<Response<Object>> addGraWithId(int major, int minor, String coor,
      int id)
  {
    HttpProtocol protocol = new HttpProtocol();
    return protocol
        .setMethod(HttpParamKeyValue.PARAM_KEY_METHOD_AreaSvr)
        .addParam(HttpParamKeyValue.PARAM_KEY_CMD,
        HttpParamKeyValue.PARAM_VALUE_AddGra)
        .addParam(HttpParamKeyValue.PARAM_KEY_MAJOR, major)
        .addParam(HttpParamKeyValue.PARAM_KEY_MINOR, minor)
        .addParam(HttpParamKeyValue.PARAM_KEY_COOR, coor)
        .addParam(HttpParamKeyValue.PARAM_KEY_ID, id)
        .post();
  }

  @override
  Future<Response<Object>> delpnt(int major, int minor, int id)
  {
    HttpProtocol protocol = new HttpProtocol();
    return protocol
        .setMethod(HttpParamKeyValue.PARAM_KEY_METHOD_NetworkSvr)
        .addParam(HttpParamKeyValue.PARAM_KEY_CMD,
        HttpParamKeyValue.PARAM_VALUE_Delpnt)
        .addParam(HttpParamKeyValue.PARAM_KEY_MAJOR, major)
        .addParam(HttpParamKeyValue.PARAM_KEY_MINOR, minor)
        .addParam(HttpParamKeyValue.PARAM_KEY_ID, id)
        .post();
  }

  @override
  Future<Response<Object>> explosion(int major, int minor, int dest,
      String invalid)
  {
    HttpProtocol protocol = new HttpProtocol();
    return protocol
        .setMethod(HttpParamKeyValue.PARAM_KEY_METHOD_NetworkSvr)
        .addParam(HttpParamKeyValue.PARAM_KEY_CMD,
        HttpParamKeyValue.PARAM_VALUE_Explosion)
        .addParam(HttpParamKeyValue.PARAM_KEY_MAJOR, major)
        .addParam(HttpParamKeyValue.PARAM_KEY_MINOR, minor)
        .addParam(HttpParamKeyValue.PARAM_KEY_DEST, dest)
        .addParam(HttpParamKeyValue.PARAM_KEY_INVALID, invalid)
        .post();
  }

  @override
  Future<Response<Object>> getGraphsByRange(int major, int minor, int gtype,
      int gr, int r, String xy)
  {
    HttpProtocol protocol = new HttpProtocol();
    return protocol
        .setMethod(HttpParamKeyValue.PARAM_KEY_METHOD_AreaSvr)
        .addParam(HttpParamKeyValue.PARAM_KEY_CMD,
        HttpParamKeyValue.PARAM_VALUE_GetGraphsByRange)
        .addParam(HttpParamKeyValue.PARAM_KEY_MAJOR, major)
        .addParam(HttpParamKeyValue.PARAM_KEY_MINOR, minor)
        .addParam(HttpParamKeyValue.PARAM_KEY_GTYPE, gtype)
        .addParam(HttpParamKeyValue.PARAM_KEY_R, r)
        .addParam(HttpParamKeyValue.PARAM_KEY_GR, gr)
        .addParam(HttpParamKeyValue.PARAM_KEY_XY, xy)
        .post();
  }

  @override
  Future<Response<Object>> getTableNum(int major, int minor, int id)
  {
    HttpProtocol protocol = new HttpProtocol();
    return protocol
        .setMethod(HttpParamKeyValue.PARAM_KEY_METHOD_AreaSvr)
        .addParam(HttpParamKeyValue.PARAM_KEY_CMD,
        HttpParamKeyValue.PARAM_VALUE_GetTableNum)
        .addParam(HttpParamKeyValue.PARAM_KEY_MAJOR, major)
        .addParam(HttpParamKeyValue.PARAM_KEY_MINOR, minor)
        .addParam(HttpParamKeyValue.PARAM_KEY_ID, id)
        .post();
  }

  @override
  Future<Response<Object>> getattgraph(int major, int minor, int id)
  {
    HttpProtocol protocol = new HttpProtocol();
    return protocol
        .setMethod(HttpParamKeyValue.PARAM_KEY_METHOD_AreaSvr)
        .addParam(HttpParamKeyValue.PARAM_KEY_CMD,
        HttpParamKeyValue.PARAM_VALUE_Getattgraph)
        .addParam(HttpParamKeyValue.PARAM_KEY_MAJOR, major)
        .addParam(HttpParamKeyValue.PARAM_KEY_MINOR, minor)
        .addParam(HttpParamKeyValue.PARAM_KEY_ID, id)
        .post();
  }

  @override
  Future<Response<Object>> getattgraphs(int major, int minor, String ids)
  {
    HttpProtocol protocol = new HttpProtocol();
    return protocol
        .setMethod(HttpParamKeyValue.PARAM_KEY_METHOD_AreaSvr)
        .addParam(HttpParamKeyValue.PARAM_KEY_CMD,
        HttpParamKeyValue.PARAM_VALUE_Getattgraph)
        .addParam(HttpParamKeyValue.PARAM_KEY_MAJOR, major)
        .addParam(HttpParamKeyValue.PARAM_KEY_MINOR, minor)
        .addParam(HttpParamKeyValue.PARAM_KEY_IDs, ids)
        .post();
  }

  @override
  Future<Response<Object>> getpnttop(int major, int minor, int id)
  {
    HttpProtocol protocol = new HttpProtocol();
    return protocol
        .setMethod(HttpParamKeyValue.PARAM_KEY_METHOD_NetworkSvr)
        .addParam(HttpParamKeyValue.PARAM_KEY_CMD,
        HttpParamKeyValue.PARAM_VALUE_Getpnttop)
        .addParam(HttpParamKeyValue.PARAM_KEY_MAJOR, major)
        .addParam(HttpParamKeyValue.PARAM_KEY_MINOR, minor)
        .addParam(HttpParamKeyValue.PARAM_KEY_ID, id)
        .post();
  }

  @override
  Future<Response<Object>> inserts(int major, int minor, String id,
      String _rcdnum,
      {String separator})
  {
    HttpProtocol protocol = new HttpProtocol();
    return protocol
        .setMethod(HttpParamKeyValue.PARAM_KEY_METHOD_AreaSvr)
        .addParam(HttpParamKeyValue.PARAM_KEY_CMD,
        HttpParamKeyValue.PARAM_VALUE_Inserts)
        .addParam(HttpParamKeyValue.PARAM_KEY_MAJOR, major)
        .addParam(HttpParamKeyValue.PARAM_KEY_MINOR, minor)
        .addParam(HttpParamKeyValue.PARAM_KEY_ID, id)
        .addParam(HttpParamKeyValue.PARAM_KEY_RCDNUM, _rcdnum)
        .addParam(HttpParamKeyValue.PARAM_KEY_SEPARATOR, separator)
        .post();
  }

  @override
  Future<Response<Object>> movpnt(int major, int minor, int id, String coor)
  {
    HttpProtocol protocol = new HttpProtocol();
    return protocol
        .setMethod(HttpParamKeyValue.PARAM_KEY_METHOD_NetworkSvr)
        .addParam(HttpParamKeyValue.PARAM_KEY_CMD,
        HttpParamKeyValue.PARAM_VALUE_Movpnt)
        .addParam(HttpParamKeyValue.PARAM_KEY_MAJOR, major)
        .addParam(HttpParamKeyValue.PARAM_KEY_MINOR, minor)
        .addParam(HttpParamKeyValue.PARAM_KEY_ID, id)
        .addParam(HttpParamKeyValue.PARAM_KEY_COOR, coor)
        .post();
  }

  @override
  Future<Response<Object>> queryGra(int major, int minor, String exp,
      String types, String vals,
      {String cols, String separator})
  {
    return query(exp, types, vals, cols: cols, separator: separator);
  }

  @override
  Future<Response<Object>> updTopLin(int major, int minor, String line,
      int oldid, int newid, int delpnt)
  {
    HttpProtocol protocol = new HttpProtocol();
    return protocol
        .setMethod(HttpParamKeyValue.PARAM_KEY_METHOD_NetworkSvr)
        .addParam(HttpParamKeyValue.PARAM_KEY_CMD,
        HttpParamKeyValue.PARAM_VALUE_UpdTopLin)
        .addParam(HttpParamKeyValue.PARAM_KEY_MAJOR, major)
        .addParam(HttpParamKeyValue.PARAM_KEY_MINOR, minor)
        .addParam(HttpParamKeyValue.PARAM_KEY_LINE, line)
        .addParam(HttpParamKeyValue.PARAM_KEY_OLDID, oldid)
        .addParam(HttpParamKeyValue.PARAM_KEY_NEWID, newid)
        .addParam(HttpParamKeyValue.PARAM_KEY_DELPNT, delpnt)
        .post();
  }

  @override
  Future<Response<Object>> updateAttGra(int major, int minor, String cols,
      String coor)
  {
    HttpProtocol protocol = new HttpProtocol();
    return protocol
        .setMethod(HttpParamKeyValue.PARAM_KEY_METHOD_AreaSvr)
        .addParam(HttpParamKeyValue.PARAM_KEY_CMD,
        HttpParamKeyValue.PARAM_VALUE_UpdateAttGra)
        .addParam(HttpParamKeyValue.PARAM_KEY_MAJOR, major)
        .addParam(HttpParamKeyValue.PARAM_KEY_MINOR, minor)
        .addParam(HttpParamKeyValue.PARAM_KEY_COLS, cols)
        .addParam(HttpParamKeyValue.PARAM_KEY_COOR, coor)
        .post();
  }
}
