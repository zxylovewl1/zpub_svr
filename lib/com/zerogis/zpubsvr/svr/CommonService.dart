import 'package:zpub_bas/zpub_bas.dart';
import 'package:zpub_http/com/zerogis/zpubhttp/constant/MessageConstant.dart';
import 'package:zpub_http/com/zerogis/zpubhttp/constant/WhatConstant.dart';
import 'package:zpub_http/com/zerogis/zpubhttp/service/BaseService.dart';
import 'package:zpub_svr/com/zerogis/zpubsvr/engine/DBOrNetDataSourcePubConstant.dart';
import 'package:zpub_svr/com/zerogis/zpubsvr/engine/DataSourceEngine.dart';

/*
 * 功能：公共服务模块
 * 需要传入的键：
 * 传入的值类型：
 * 传入的值含义：
 * 是否必传 ：
 * 作者：郑朝军 on 2019/4/7 23:23
 * 邮箱：1250393285@qq.com
 * 公司：武汉智博创享科技有限公司
 */
class CommonService extends BaseService
{
  /*
   * 查询属性<br/>
   */
  static void queryAttJo(int major, int minor, Object id, HttpListener listener)
  {
    BaseService.showProgressBar(listener, text: "正在查询属性");
    DBOrNetDataSourcePubConstant dbOrNetDataSourcePubConstant =
    DataSourceEngine.getInstance().getDbOrNetDataSourcePubConstant();
    dbOrNetDataSourcePubConstant.getAtt(major, minor, id).then((response)
    {
      Map<String, dynamic> jo = BaseService.responseData(response);
      if (BaseService.isDataInvalid("queryAttJo", jo, listener))
      {
        return MessageConstant.MSG_EMPTY;
      }
      return jo;
    }).then((data)
    {
      BaseService.sendMessage(
          "queryAttJo", data, WhatConstant.WHAT_NET_DATA_SUCCESS, listener);
    }).catchError((e)
    {
      BaseService.sendMessage(
          "queryAttJo", e, WhatConstant.WHAT_EXCEPITON, listener);
    });
  }

  /*
   * 删除属性<br/>
   */
  static void delete(int major, int minor, Object id, HttpListener listener)
  {
    BaseService.showProgressBar(listener, text: "正在删除属性");
    DBOrNetDataSourcePubConstant dbOrNetDataSourcePubConstant =
    DataSourceEngine.getInstance().getDbOrNetDataSourcePubConstant();
    dbOrNetDataSourcePubConstant.delete(major, minor, id).then((response)
    {
      Map<String, dynamic> jo = BaseService.responseData(response);
      if (BaseService.isDataInvalid("delete", jo, listener))
      {
        return MessageConstant.MSG_EMPTY;
      }
      return jo;
    }).then((data)
    {
      BaseService.sendMessage("delete", data, WhatConstant.WHAT_NET_DATA_SUCCESS, listener);
    }).catchError((e)
    {
      BaseService.sendMessage("delete", e, WhatConstant.WHAT_EXCEPITON, listener);
    });
  }

  /*
   * 删除属性<br/>
   */
  static void deleteEntity(int major, int minor, Object entityid, HttpListener listener)
  {
    BaseService.showProgressBar(listener, text: "正在删除属性");
    DBOrNetDataSourcePubConstant dbOrNetDataSourcePubConstant =
    DataSourceEngine.getInstance().getDbOrNetDataSourcePubConstant();
    dbOrNetDataSourcePubConstant.deleteEntity(major, minor, entityid).then((response)
    {
      Map<String, dynamic> jo = BaseService.responseData(response);
      if (BaseService.isDataInvalid("deleteEntity", jo, listener))
      {
        return MessageConstant.MSG_EMPTY;
      }
      return jo;
    }).then((data)
    {
      BaseService.sendMessage("deleteEntity", data, WhatConstant.WHAT_NET_DATA_SUCCESS, listener);
    }).catchError((e)
    {
      BaseService.sendMessage("deleteEntity", e, WhatConstant.WHAT_EXCEPITON, listener);
    });
  }
}
