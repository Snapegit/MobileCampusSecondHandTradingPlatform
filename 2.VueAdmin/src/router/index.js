	import {
		createRouter,
		createWebHashHistory
	} from 'vue-router'
	import address from '@/views/address/list'
	import yonghu from '@/views/yonghu/list'
	import discussshangpinxinxi from '@/views/discussshangpinxinxi/list'
	import shangpinxinxi from '@/views/shangpinxinxi/list'
	import orders from '@/views/orders/list'
	import storeup from '@/views/storeup/list'
	import shangpinleixing from '@/views/shangpinleixing/list'
	import config from '@/views/config/list'
	import users from '@/views/users/list'
	import cart from '@/views/cart/list'
	import yonghuCenter from '@/views/yonghu/center'

export const routes = [{
		path: '/login',
		name: 'login',
		component: () => import('../views/login.vue')
	},{
		path: '/',
		name: '首页',
		component: () => import('../views/index'),
		children: [{
			path: '/',
			name: '首页Home',
			component: () => import('../views/HomeView.vue'),
			meta: {
				affix: true
			}
		}, {
			path: '/updatepassword',
			name: '修改密码',
			component: () => import('../views/updatepassword.vue')
		}
		
		,{
			path: '/yonghuCenter',
			name: '用户个人中心',
			component: yonghuCenter
		}
		,{
			path: '/address',
			name: '地址',
			component: address
		}
		,{
			path: '/yonghu',
			name: '用户',
			component: yonghu
		}
		,{
			path: '/discussshangpinxinxi',
			name: '商品信息评论',
			component: discussshangpinxinxi
		}
		,{
			path: '/shangpinxinxi',
			name: '商品信息',
			component: shangpinxinxi
		}
		,{
			path: '/orders',
			name: '订单管理',
			component: orders
		}
		,{
			path: '/storeup',
			name: '我的收藏',
			component: storeup
		}
		,{
			path: '/shangpinleixing',
			name: '商品类型',
			component: shangpinleixing
		}
		,{
			path: '/config',
			name: '轮播图',
			component: config
		}
		,{
			path: '/users',
			name: '管理员',
			component: users
		}
		,{
			path: '/cart',
			name: '购物车',
			component: cart
		}
		]
	},
]

const router = createRouter({
	history: createWebHashHistory(process.env.BASE_URL),
	routes
})

export default router
