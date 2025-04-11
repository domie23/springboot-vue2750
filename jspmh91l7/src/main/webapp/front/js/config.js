
var projectName = '智能实时疫情监管服务平台';
/**
 * 轮播图配置
 */
var swiper = {
	// 设定轮播容器宽度，支持像素和百分比
	width: '100%',
	height: '400px',
	// hover（悬停显示）
	// always（始终显示）
	// none（始终不显示）
	arrow: 'none',
	// default（左右切换）
	// updown（上下切换）
	// fade（渐隐渐显切换）
	anim: 'default',
	// 自动切换的时间间隔
	// 默认3000
	interval: 2000,
	// 指示器位置
	// inside（容器内部）
	// outside（容器外部）
	// none（不显示）
	indicator: 'outside'
}

/**
 * 个人中心菜单
 */
var centerMenu = [{
	name: '个人中心',
	url: '../' + localStorage.getItem('userTable') + '/center.jsp'
}, 
]


var indexNav = [


{
	name: '通知新闻',
	url: './pages/news/list.jsp'
},
]

var adminurl =  "http://localhost:8080/jspmh91l7/index.jsp";

var cartFlag = false

var chatFlag = false




var menu = [{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-similar","buttons":["新增","查看","修改","删除"],"menu":"用户","menuJump":"列表","tableName":"yonghu"}],"menu":"用户管理"},{"child":[{"appFrontIcon":"cuIcon-link","buttons":["新增","查看","修改","删除"],"menu":"信息员","menuJump":"列表","tableName":"xinxiyuan"}],"menu":"信息员管理"},{"child":[{"appFrontIcon":"cuIcon-link","buttons":["查看","修改","删除","数据分析"],"menu":"健康信息采集","menuJump":"列表","tableName":"jiankangxinxicaiji"}],"menu":"健康信息采集管理"},{"child":[{"appFrontIcon":"cuIcon-pic","buttons":["查看","修改","删除","报表"],"menu":"数据分析","menuJump":"列表","tableName":"shujufenxi"}],"menu":"数据分析管理"},{"child":[{"appFrontIcon":"cuIcon-pic","buttons":["查看","修改","删除","审核","问题处理"],"menu":"问题上报","menuJump":"列表","tableName":"wentishangbao"}],"menu":"问题上报管理"},{"child":[{"appFrontIcon":"cuIcon-pay","buttons":["查看","修改","删除"],"menu":"问题处理","menuJump":"列表","tableName":"wentichuli"}],"menu":"问题处理管理"},{"child":[{"appFrontIcon":"cuIcon-taxi","buttons":["新增","查看","修改","删除"],"menu":"指挥调度","menuJump":"列表","tableName":"zhihuidiaodu"}],"menu":"指挥调度管理"},{"child":[{"appFrontIcon":"cuIcon-clothes","buttons":["新增","查看","修改","删除","报表"],"menu":"确诊人数","menuJump":"列表","tableName":"quezhenrenshu"}],"menu":"确诊人数管理"},{"child":[{"appFrontIcon":"cuIcon-taxi","buttons":["新增","查看","修改","删除","报表"],"menu":"感染者","menuJump":"列表","tableName":"ganranzhe"}],"menu":"感染者管理"},{"child":[{"appFrontIcon":"cuIcon-medal","buttons":["查看","修改","删除"],"menu":"轮播图管理","tableName":"config"},{"appFrontIcon":"cuIcon-news","buttons":["新增","查看","修改","删除"],"menu":"通知新闻","tableName":"news"},{"appFrontIcon":"cuIcon-vip","buttons":["查看","编辑名称","编辑父级","删除"],"menu":"菜单列表","tableName":"menu"}],"menu":"系统管理"}],"frontMenu":[],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-link","buttons":["查看"],"menu":"健康信息采集","menuJump":"列表","tableName":"jiankangxinxicaiji"}],"menu":"健康信息采集管理"},{"child":[{"appFrontIcon":"cuIcon-pic","buttons":["查看","报表"],"menu":"数据分析","menuJump":"列表","tableName":"shujufenxi"}],"menu":"数据分析管理"},{"child":[{"appFrontIcon":"cuIcon-clothes","buttons":["查看","报表"],"menu":"确诊人数","menuJump":"列表","tableName":"quezhenrenshu"}],"menu":"确诊人数管理"},{"child":[{"appFrontIcon":"cuIcon-taxi","buttons":["查看","报表"],"menu":"感染者","menuJump":"列表","tableName":"ganranzhe"}],"menu":"感染者管理"}],"frontMenu":[],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"用户","tableName":"yonghu"},{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-link","buttons":["新增","查看","修改","删除","数据分析"],"menu":"健康信息采集","menuJump":"列表","tableName":"jiankangxinxicaiji"}],"menu":"健康信息采集管理"},{"child":[{"appFrontIcon":"cuIcon-pic","buttons":["查看","报表"],"menu":"数据分析","menuJump":"列表","tableName":"shujufenxi"}],"menu":"数据分析管理"},{"child":[{"appFrontIcon":"cuIcon-pic","buttons":["新增","查看","修改","删除"],"menu":"问题上报","menuJump":"列表","tableName":"wentishangbao"}],"menu":"问题上报管理"},{"child":[{"appFrontIcon":"cuIcon-pay","buttons":["查看"],"menu":"问题处理","menuJump":"列表","tableName":"wentichuli"}],"menu":"问题处理管理"},{"child":[{"appFrontIcon":"cuIcon-taxi","buttons":["查看"],"menu":"指挥调度","menuJump":"列表","tableName":"zhihuidiaodu"}],"menu":"指挥调度管理"},{"child":[{"appFrontIcon":"cuIcon-clothes","buttons":["查看","报表"],"menu":"确诊人数","menuJump":"列表","tableName":"quezhenrenshu"}],"menu":"确诊人数管理"},{"child":[{"appFrontIcon":"cuIcon-taxi","buttons":["查看","报表"],"menu":"感染者","menuJump":"列表","tableName":"ganranzhe"}],"menu":"感染者管理"}],"frontMenu":[],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"信息员","tableName":"xinxiyuan"}]


var isAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].backMenu.length;j++){
                for(let k=0;k<menus[i].backMenu[j].child.length;k++){
                    if(tableName==menus[i].backMenu[j].child[k].tableName){
                        let buttons = menus[i].backMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}

var isFrontAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].frontMenu.length;j++){
                for(let k=0;k<menus[i].frontMenu[j].child.length;k++){
                    if(tableName==menus[i].frontMenu[j].child[k].tableName){
                        let buttons = menus[i].frontMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}
