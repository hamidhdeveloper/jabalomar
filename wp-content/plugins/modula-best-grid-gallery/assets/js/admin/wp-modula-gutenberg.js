!(function (t) {
	var e = {};
	function a(n) {
		if (e[n]) return e[n].exports;
		var l = (e[n] = { i: n, l: !1, exports: {} });
		return t[n].call(l.exports, l, l.exports, a), (l.l = !0), l.exports;
	}
	(a.m = t),
		(a.c = e),
		(a.d = function (t, e, n) {
			a.o(t, e) ||
				Object.defineProperty(t, e, { enumerable: !0, get: n });
		}),
		(a.r = function (t) {
			'undefined' != typeof Symbol &&
				Symbol.toStringTag &&
				Object.defineProperty(t, Symbol.toStringTag, {
					value: 'Module',
				}),
				Object.defineProperty(t, '__esModule', { value: !0 });
		}),
		(a.t = function (t, e) {
			if ((1 & e && (t = a(t)), 8 & e)) return t;
			if (4 & e && 'object' == typeof t && t && t.__esModule) return t;
			var n = Object.create(null);
			if (
				(a.r(n),
				Object.defineProperty(n, 'default', {
					enumerable: !0,
					value: t,
				}),
				2 & e && 'string' != typeof t)
			)
				for (var l in t)
					a.d(
						n,
						l,
						function (e) {
							return t[e];
						}.bind(null, l)
					);
			return n;
		}),
		(a.n = function (t) {
			var e =
				t && t.__esModule
					? function () {
							return t.default;
					  }
					: function () {
							return t;
					  };
			return a.d(e, 'a', e), e;
		}),
		(a.o = function (t, e) {
			return Object.prototype.hasOwnProperty.call(t, e);
		}),
		(a.p = ''),
		a((a.s = 0));
})([
	function (t, e, a) {
		'use strict';
		a.r(e);
		var n = wp.element.useEffect,
			l = function (t) {
				var e = t.onIdChange,
					a = t.id,
					l = t.options,
					o = t.galleries;
				return (
					n(function () {
						var t = [];
						null != o &&
							0 == t.length &&
							o.forEach(function (e) {
								t.push({
									value: e.id,
									label: e.title.rendered,
								});
							}),
							jQuery('.modula-gallery-input').selectize({
								valueField: 'value',
								labelField: 'label',
								searchField: ['label', 'value'],
								create: !1,
								maxItems: 1,
								placeholder: 'Search for a gallery...',
								preload: !0,
								allowEmptyOptions: !0,
								closeAfterSelect: !0,
								options: l.concat(t),
								render: {
									option: function (t, e) {
										return (
											'<div><span className="title">' +
											t.label +
											'<span className="name"> (#' +
											e(t.value) +
											')</span></div>'
										);
									},
								},
								load: function (t, e) {
									if (!t.length) return e();
									jQuery.ajax({
										url: modulaVars.ajaxURL,
										type: 'GET',
										data: {
											action: 'modula_get_gallery',
											nonce: modulaVars.nonce,
											term: t,
										},
										success: function (t) {
											e(t);
										},
									});
								},
								onChange: function (t) {
									e(t);
								},
							});
					}, []),
					React.createElement('input', {
						className: 'modula-gallery-input',
						defaultValue: '0' == a ? '' : a,
					})
				);
			},
			o = wp.i18n.__,
			c = wp.element.Fragment,
			i = wp.blockEditor.InspectorControls,
			r = wp.components,
			d = r.Button,
			u = r.PanelBody,
			s = wp.components.withFilters('modula.ModulaInspector')(
				function (t) {
					var e = t.attributes,
						a = t.galleries,
						n = t.onIdChange,
						r = e.id,
						s = e.currentSelectize;
					return React.createElement(
						c,
						null,
						React.createElement(
							i,
							null,
							React.createElement(
								u,
								{
									title: o(
										'Gallery Settings',
										'modula-best-grid-gallery'
									),
									initialOpen: !0,
								},
								a.length > 0 &&
									React.createElement(
										c,
										null,
										React.createElement(l, {
											id: r,
											key: r,
											value: r,
											options: s,
											onIdChange: n,
											galleries: a,
										}),
										0 != r &&
											React.createElement(
												d,
												{
													target: '_blank',
													href:
														modulaVars.adminURL +
														'post.php?post=' +
														r +
														'&action=edit',
													isSecondary: !0,
												},
												o('Edit gallery')
											)
									)
							)
						)
					);
				}
			),
			m = {};
		(m.modula = React.createElement(
			'svg',
			{
				xmlns: 'http://www.w3.org/2000/svg',
				x: '0px',
				y: '0px',
				viewBox: '364 242.9 312.2 357',
			},
			React.createElement(
				'g',
				null,
				React.createElement('path', {
					d: 'M528.1,242.9c8.5,16.9,17,33.8,25.6,50.6c13.4,26.4,26.9,52.7,39.9,79.7c-41.8-23.3-83.6-46.7-125.4-70.1 c0.3-1.9,1.7-2.6,2.7-3.5c17.7-17.7,35.4-35.4,53.1-53c1.1-1.1,2.6-2,3.1-3.7C527.4,242.9,527.8,242.9,528.1,242.9z',
				}),
				React.createElement('path', {
					d: 'M602.3,463.3c11.3-6.9,22.6-13.9,33.9-20.8c5.5-3.4,11.1-6.7,16.5-10.3c2.2-1.4,2.9-1.1,3.5,1.5 c6.4,25.3,13,50.6,19.6,75.8c0.6,2.2,1,3.7-2.4,3.5c-46.7-2.1-93.5-4.1-140.2-6.1c-0.2,0-0.3-0.1-0.5-0.2c0.5-1.7,2.1-2,3.3-2.7 c20-12.3,39.9-24.7,60-36.8c3.4-2.1,5.1-3.7,4.8-8.5c-1.4-21.3-1.8-42.6-2.6-63.9c-0.9-24.1-1.8-48.3-2.8-72.4 c-0.2-6.1-0.2-6.1,5.5-4.6c23.8,6.2,47.6,12.5,71.5,18.5c3.9,1,4.2,1.9,2.1,5.4c-23.4,38.5-46.7,77.1-70,115.7c-1,1.7-2,3.4-3,5.1 C601.7,462.8,602,463,602.3,463.3z',
				}),
				React.createElement('path', {
					d: 'M372.8,326.9c48,2.6,95.8,5.1,143.9,7.7c-0.9,2-2.5,2.3-3.7,3.1c-38.6,23.2-77.3,46.4-115.9,69.6c-3,1.8-4.3,2.6-5.4-1.9 c-5.9-24.9-12.2-49.7-18.3-74.6C373.1,329.6,373,328.4,372.8,326.9z',
				}),
				React.createElement('path', {
					d: 'M517.6,599.9c-23.2-43.7-45.9-86.6-69.2-130.5c2.3,1.2,3.5,1.8,4.7,2.4c39.8,21.5,79.5,43.1,119.3,64.5 c3.2,1.7,4.1,2.5,1,5.6c-17.7,17.8-35.2,35.9-52.8,53.9C519.7,596.9,518.9,598.2,517.6,599.9z',
				}),
				React.createElement('path', {
					d: 'M364.9,505.1c26.6-40.5,53.1-80.8,79.7-121.3c1.3,1.3,0.9,2.5,0.9,3.6c0,46-0.1,92-0.1,137.9c0,3.1-0.2,4.5-4,3.3 c-24.9-7.7-49.9-15.2-74.9-22.8C366,505.8,365.7,505.5,364.9,505.1z',
				})
			)
		)),
			(m.remove = React.createElement(
				'svg',
				{
					width: '24',
					height: '24',
					xmlns: 'http://www.w3.org/2000/svg',
					viewBox: '0 0 24 24',
					role: 'img',
					'aria-hidden': 'true',
					focusable: 'false',
				},
				React.createElement('path', {
					d: 'M13 11.9l3.3-3.4-1.1-1-3.2 3.3-3.2-3.3-1.1 1 3.3 3.4-3.5 3.6 1 1L12 13l3.5 3.5 1-1z',
				})
			)),
			(m.replace = React.createElement(
				'svg',
				{
					width: '24',
					height: '24',
					xmlns: 'http://www.w3.org/2000/svg',
					viewBox: '0 0 24 24',
					role: 'img',
					'aria-hidden': 'true',
					focusable: 'false',
				},
				React.createElement('path', {
					d: 'M20.1 5.1L16.9 2 6.2 12.7l-1.3 4.4 4.5-1.3L20.1 5.1zM4 20.8h8v-1.5H4v1.5z',
				})
			)),
			(m.chevronLeft = React.createElement(
				'svg',
				{
					width: '24',
					height: '24',
					xmlns: 'http://www.w3.org/2000/svg',
					viewBox: '0 0 24 24',
					role: 'img',
					'aria-hidden': 'true',
					focusable: 'false',
				},
				React.createElement('path', {
					d: 'M14.6 7l-1.2-1L8 12l5.4 6 1.2-1-4.6-5z',
				})
			)),
			(m.chevronRight = React.createElement(
				'svg',
				{
					width: '24',
					height: '24',
					xmlns: 'http://www.w3.org/2000/svg',
					viewBox: '0 0 24 24',
					role: 'img',
					'aria-hidden': 'true',
					focusable: 'false',
				},
				React.createElement('path', {
					d: 'M10.6 6L9.4 7l4.6 5-4.6 5 1.2 1 5.4-6z',
				})
			)),
			(m.twitter = React.createElement(
				'svg',
				{
					'aria-hidden': 'true',
					'data-prefix': 'fab',
					'data-icon': 'twitter',
					className: 'svg-inline--fa fa-twitter fa-w-16',
					role: 'img',
					xmlns: 'http://www.w3.org/2000/svg',
					viewBox: '0 0 512 512',
				},
				React.createElement('path', {
					fill: 'currentColor',
					d: 'M459.37 151.716c.325 4.548.325 9.097.325 13.645 0 138.72-105.583 298.558-298.558 298.558-59.452 0-114.68-17.219-161.137-47.106 8.447.974 16.568 1.299 25.34 1.299 49.055 0 94.213-16.568 130.274-44.832-46.132-.975-84.792-31.188-98.112-72.772 6.498.974 12.995 1.624 19.818 1.624 9.421 0 18.843-1.3 27.614-3.573-48.081-9.747-84.143-51.98-84.143-102.985v-1.299c13.969 7.797 30.214 12.67 47.431 13.319-28.264-18.843-46.781-51.005-46.781-87.391 0-19.492 5.197-37.36 14.294-52.954 51.655 63.675 129.3 105.258 216.365 109.807-1.624-7.797-2.599-15.918-2.599-24.04 0-57.828 46.782-104.934 104.934-104.934 30.213 0 57.502 12.67 76.67 33.137 23.715-4.548 46.456-13.32 66.599-25.34-7.798 24.366-24.366 44.833-46.132 57.827 21.117-2.273 41.584-8.122 60.426-16.243-14.292 20.791-32.161 39.308-52.628 54.253z',
				})
			)),
			(m.facebook = React.createElement(
				'svg',
				{
					'aria-hidden': 'true',
					'data-prefix': 'fab',
					'data-icon': 'facebook-f',
					className: 'svg-inline--fa fa-facebook-f fa-w-9',
					role: 'img',
					xmlns: 'http://www.w3.org/2000/svg',
					viewBox: '0 0 264 512',
				},
				React.createElement('path', {
					fill: 'currentColor',
					d: 'M76.7 512V283H0v-91h76.7v-71.7C76.7 42.4 124.3 0 193.8 0c33.3 0 61.9 2.5 70.2 3.6V85h-48.2c-37.8 0-45.1 18-45.1 44.3V192H256l-11.7 91h-73.6v229',
				})
			)),
			(m.whatsapp = React.createElement(
				'svg',
				{
					'aria-hidden': 'true',
					focusable: 'false',
					preserveAspectRatio: 'xMidYMid meet',
					viewBox: '0 0 1536 1600',
				},
				React.createElement('path', {
					d: 'M985 878q13 0 97.5 44t89.5 53q2 5 2 15q0 33-17 76q-16 39-71 65.5T984 1158q-57 0-190-62q-98-45-170-118T476 793q-72-107-71-194v-8q3-91 74-158q24-22 52-22q6 0 18 1.5t19 1.5q19 0 26.5 6.5T610 448q8 20 33 88t25 75q0 21-34.5 57.5T599 715q0 7 5 15q34 73 102 137q56 53 151 101q12 7 22 7q15 0 54-48.5t52-48.5zm-203 530q127 0 243.5-50t200.5-134t134-200.5t50-243.5t-50-243.5T1226 336t-200.5-134T782 152t-243.5 50T338 336T204 536.5T154 780q0 203 120 368l-79 233l242-77q158 104 345 104zm0-1382q153 0 292.5 60T1315 247t161 240.5t60 292.5t-60 292.5t-161 240.5t-240.5 161t-292.5 60q-195 0-365-94L0 1574l136-405Q28 991 28 780q0-153 60-292.5T249 247T489.5 86T782 26z',
					fill: 'currentColor',
				})
			)),
			(m.pinterest = React.createElement(
				'svg',
				{
					'aria-hidden': 'true',
					'data-prefix': 'fab',
					'data-icon': 'pinterest-p',
					className: 'svg-inline--fa fa-pinterest-p fa-w-12',
					role: 'img',
					xmlns: 'http://www.w3.org/2000/svg',
					viewBox: '0 0 384 512',
				},
				React.createElement('path', {
					fill: 'currentColor',
					d: 'M204 6.5C101.4 6.5 0 74.9 0 185.6 0 256 39.6 296 63.6 296c9.9 0 15.6-27.6 15.6-35.4 0-9.3-23.7-29.1-23.7-67.8 0-80.4 61.2-137.4 140.4-137.4 68.1 0 118.5 38.7 118.5 109.8 0 53.1-21.3 152.7-90.3 152.7-24.9 0-46.2-18-46.2-43.8 0-37.8 26.4-74.4 26.4-113.4 0-66.2-93.9-54.2-93.9 25.8 0 16.8 2.1 35.4 9.6 50.7-13.8 59.4-42 147.9-42 209.1 0 18.9 2.7 37.5 4.5 56.4 3.4 3.8 1.7 3.4 6.9 1.5 50.4-69 48.6-82.5 71.4-172.8 12.3 23.4 44.1 36 69.3 36 106.2 0 153.9-103.5 153.9-196.8C384 71.3 298.2 6.5 204 6.5z',
				})
			)),
			(m.linkedin = React.createElement(
				'svg',
				{
					'aria-hidden': 'true',
					focusable: 'false',
					'data-prefix': 'fab',
					'data-icon': 'linkedin-in',
					className: 'svg-inline--fa fa-linkedin-in fa-w-14',
					role: 'img',
					xmlns: 'http://www.w3.org/2000/svg',
					viewBox: '0 0 448 512',
				},
				React.createElement('path', {
					fill: 'currentColor',
					d: 'M100.28 448H7.4V148.9h92.88zM53.79 108.1C24.09 108.1 0 83.5 0 53.8a53.79 53.79 0 0 1 107.58 0c0 29.7-24.1 54.3-53.79 54.3zM447.9 448h-92.68V302.4c0-34.7-.7-79.2-48.29-79.2-48.29 0-55.69 37.7-55.69 76.7V448h-92.78V148.9h89.08v40.8h1.3c12.4-23.5 42.69-48.3 87.88-48.3 94 0 111.28 61.9 111.28 142.3V448z',
				})
			)),
			(m.email = React.createElement(
				'svg',
				{
					xmlns: 'http://www.w3.org/2000/svg',
					width: '24',
					height: '24',
					viewBox: '0 0 24 24',
				},
				React.createElement('path', {
					d: 'M0 3v18h24v-18h-24zm6.623 7.929l-4.623 5.712v-9.458l4.623 3.746zm-4.141-5.929h19.035l-9.517 7.713-9.518-7.713zm5.694 7.188l3.824 3.099 3.83-3.104 5.612 6.817h-18.779l5.513-6.812zm9.208-1.264l4.616-3.741v9.348l-4.616-5.607z',
					fill: 'currentColor',
				})
			)),
			(m.chevronRightFancy = React.createElement(
				'svg',
				{
					xmlns: 'http://www.w3.org/2000/svg',
					width: '16',
					height: '16',
					fill: 'currentColor',
					className: 'bi bi-chevron-right',
					viewBox: '0 0 16 16',
				},
				React.createElement('path', {
					fillRule: 'evenodd',
					d: 'M4.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L10.293 8 4.646 2.354a.5.5 0 0 1 0-.708z',
				})
			));
		var g = m,
			f = wp.element.Fragment,
			p = function (t) {
				var e = t.settings,
					a = t.img,
					n = t.hideTitle,
					l = t.hideDescription,
					o = t.hideSocial;
				return [
					React.createElement(
						f,
						null,
						['tilt_1', 'tilt_3', 'tilt_7'].includes(e.effect) &&
							React.createElement(
								'div',
								{
									className:
										'tilter__deco tilter__deco--shine',
								},
								React.createElement('div', null)
							),
						['tilt_3', 'tilt_7'].includes(e.effect) &&
							React.createElement('div', {
								className: 'tilter__deco tilter__deco--overlay',
							}),
						['tilt_1', 'tilt_7'].includes(e.effect) &&
							React.createElement('div', {
								className: 'tilter__deco tilter__deco--lines',
							}),
						React.createElement(
							'div',
							{ className: 'figc' },
							React.createElement(
								'div',
								{ className: 'figc-inner' },
								'0' == e.hide_title &&
									!n &&
									React.createElement(
										'div',
										{ className: 'jtg-title' },
										' ',
										a.title,
										' '
									),
								React.createElement(
									'div',
									{
										className: [
											'lily',
											'centered-bottom',
											'sadie',
											'ruby',
											'bubba',
											'dexter',
											'chico',
											'ming',
										].includes(e.effect)
											? 'jtg-body'
											: '',
									},
									'0' == e.hide_description &&
										!l &&
										React.createElement(
											'p',
											{ className: 'description' },
											' ',
											0 != a.description.length &&
												a.description,
											' '
										),
									!o &&
										'1' == e.enableSocial &&
										React.createElement(
											'div',
											{ className: 'jtg-social' },
											'1' == e.enableTwitter &&
												React.createElement(
													'a',
													{
														className:
															'modula-icon-twitter',
														href: '#',
													},
													' ',
													'$',
													g.twitter,
													' '
												),
											'1' == e.enableFacebook &&
												React.createElement(
													'a',
													{
														className:
															'modula-icon-facebook',
														href: '#',
													},
													' ',
													'$',
													g.facebook,
													' '
												),
											'1' == e.enableWhatsapp &&
												React.createElement(
													'a',
													{
														className:
															'modula-icon-whatsapp',
														href: '#',
													},
													' ',
													'$',
													g.whatsapp,
													' '
												),
											'1' == e.enableLinkedin &&
												React.createElement(
													'a',
													{
														className:
															'modula-icon-linkedin',
														href: '#',
													},
													' ',
													'$',
													g.linkedin,
													' '
												),
											'1' == e.enablePinterest &&
												React.createElement(
													'a',
													{
														className:
															'modula-icon-pinterest',
														href: '#',
													},
													' ',
													'$',
													g.pinterest,
													' '
												),
											'1' == e.enableEmail &&
												React.createElement(
													'a',
													{
														className:
															'modula-icon-email',
														href: '#',
													},
													' ',
													'$',
													g.email,
													' '
												)
										)
								)
							)
						)
					),
				];
			},
			h = wp.components.withFilters('modula.ModulaGalleryImage')(
				function (t) {
					var e = t.attributes,
						a = e.settings,
						n = e.effectCheck,
						l = t.img,
						o = t.index;
					return [
						React.createElement(
							'div',
							{
								className: 'modula-item effect-'.concat(
									a.effect
								),
								'data-width': l['data-width']
									? l['data-width']
									: '2',
								'data-height': l['data-height']
									? l['data-height']
									: '2',
							},
							React.createElement('div', {
								className: 'modula-item-overlay',
							}),
							React.createElement(
								'div',
								{ className: 'modula-item-content' },
								React.createElement('img', {
									className: 'modula-image pic',
									'data-id': l.id,
									'data-full': l.src,
									'data-src': l.src,
									'data-valign': 'middle',
									'data-halign': 'center',
									src: l.src,
								}),
								'slider' !== a.type &&
									React.createElement(p, {
										settings: a,
										img: l,
										index: o,
										hideTitle: null == n || 1 != n.title,
										hideDescription:
											null == n || 1 != n.description,
										hideSocial: null == n || 1 != n.social,
										effectCheck: n,
									})
							)
						),
					];
				}
			),
			v = function (t) {
				var e = t.id,
					a = t.settings,
					n = '';
				'grid' == a.type &&
					'automatic' != a.grid_type &&
					(n += '#jtg-'
						.concat(
							e,
							'.modula-gallery .modula-item, .modula-gallery .modula-grid-sizer { width: calc('
						)
						.concat(100 / a.grid_type, '% - ')
						.concat(
							a.gutter - a.gutter / a.grid_type,
							'px) !important}'
						)),
					'0' != a.borderSize &&
						(n += '#jtg-'
							.concat(e, ' .modula-item {\n\t\t\tborder: ')
							.concat(a.borderSize, 'px solid ')
							.concat(a.borderColor, ';\n\t\t}')),
					'0' != a.borderRadius &&
						(n += '#jtg-'
							.concat(e, ' .modula-item {\n\t\t\tborder-radius: ')
							.concat(a.borderRadius, 'px;\n\t\t}')),
					'0' != a.shadowSize &&
						(n += '#jtg-'
							.concat(e, ' .modula-item {\n\t\t\tbox-shadow: ')
							.concat(a.shadowColor, ' 0px 0px ')
							.concat(a.shadowSize, 'px;\n\t\t}')),
					'#ffffff' != a.socialIconColor &&
						(n += '#jtg-'
							.concat(
								e,
								' .modula-item .jtg-social a {\n\t\t\tcolor: '
							)
							.concat(a.socialIconColor, ';\n\t\t}')),
					'16' != a.socialIconSize &&
						(n += '#jtg-'
							.concat(
								e,
								' .modula-item .jtg-social svg {\n\t\t\theight: '
							)
							.concat(a.socialIconSize, 'px;\n\t\t\twidth: ')
							.concat(a.socialIconSize, 'px;\n\t\t}')),
					'10' != a.socialIconPadding &&
						(n += '#jtg-'
							.concat(
								e,
								' .modula-item .jtg-social a:not(:last-child) {\n\t\t\tmargin-right: '
							)
							.concat(a.socialIconPadding, 'px;\n\t\t}')),
					(n += '#jtg-'
						.concat(
							e,
							' .modula-item .caption {\n\t\tbackground-color: '
						)
						.concat(a.captionColor, ';\n\t}')),
					'' != a.captionColor &&
						(n += '#jtg-'
							.concat(e, ' .modula-item .figc {\n\t\t\tcolor: ')
							.concat(a.captionColor, ';\n\t\t}')),
					'' != a.titleFontSize &&
						'0' != a.titleFontSize &&
						(n += '#jtg-'
							.concat(
								e,
								' .modula-item .figc .jtg-title {\n\t\t\tfont-size: '
							)
							.concat(a.titleFontSize, 'px;\n\t\t}')),
					'' != a.captionFontSize &&
						'0' != a.captionFontSize &&
						(n += '#jtg-'
							.concat(
								e,
								' .modula-item .figc p.description {\n\t\t\tfont-size: '
							)
							.concat(a.captionFontSize, 'px;\n\t\t}')),
					(n += '#jtg-'
						.concat(
							e,
							' .modula-items .figc p.description {\n\t\t\tcolor: '
						)
						.concat(a.captionColor, ';\n\t}')),
					'' != a.titleColor
						? (n += '#jtg-'
								.concat(
									e,
									' .modula-items .figc .jtg-title {\n\t\t\tcolor: '
								)
								.concat(a.titleColor, ';\n\t\t}'))
						: (n += '#jtg-'
								.concat(
									e,
									' .modula-items .figc .jtg-title {\n\t\t\tcolor: '
								)
								.concat(a.captionColor, ';\n\t\t}')),
					(n += '#jtg-'
						.concat(e, '.modula-gallery .modula-item > a, #jtg-')
						.concat(e, '.modula-gallery .modula-item, #jtg-')
						.concat(
							e,
							'.modula-gallery .modula-item-content > a:not(.modula-no-follow){\n\t\tcursor: '
						)
						.concat(a.cursor, ';\n\t}')),
					('custom-grid' == a.type && 'slider' == a.type) ||
						((n += '#jtg-'
							.concat(e, ' {\n\t\twidth: ')
							.concat(a.width, ';\n\t\tmargin : 0 auto;\n\t\t}')),
						0 == t.imagesCount
							? (n += '#jtg-'.concat(
									e,
									' .modula-items {\n\t\t\t\theight: 100px;\n\t\t\t}'
							  ))
							: 'grid' != a.type && 'slider' != a.type
							? (n += '#jtg-'
									.concat(
										e,
										' .modula-items {\n\t\t\t\theight: '
									)
									.concat(a.height, 'px;\n\t\t\t}'))
							: 'slider' == a.type &&
							  (n += '#jtg-'.concat(
									e,
									' .modula-items {\n\t\t\t\theight: auto;\n\t\t\t}'
							  ))),
					null != a.style &&
						0 != a.style.length &&
						(n += ''.concat(a.style));
				var l = '';
				return (
					'' != a.mobileTitleFontSize &&
						0 != a.mobileTitleFontSize &&
						(l += '#jtg-'
							.concat(
								e,
								' .modula-item .figc .jtg-title {\n\t\t\tfont-size: '
							)
							.concat(a.mobileTitleFontSize, 'px\n\t\t}')),
					(l += '#jtg-'
						.concat(
							e,
							' .modula-items .figc p.description {\n\t\tcolor: '
						)
						.concat(a.captionColor, ';\n\t\tfont-size: ')
						.concat(a.mobileCaptionFontSize, 'px;\n\t}')),
					(n += '@media screen and (max-width:480px){\n\t\t'.concat(
						l,
						'\n\t\t}'
					)),
					'none' == a.effect &&
						(n += '#jtg-'.concat(
							e,
							' .modula-items .modula-item:hover img {\n\t\t\topacity: 1;\n\t\t}'
						)),
					(n += '#jtg-'
						.concat(
							e,
							'.modula .modula-items .modula-item .modula-item-overlay,   #jtg-'
						)
						.concat(
							e,
							'.modula .modula-items .modula-item.effect-layla,   #jtg-'
						)
						.concat(
							e,
							'.modula .modula-items .modula-item.effect-ruby,  #jtg-'
						)
						.concat(
							e,
							'.modula .modula-items .modula-item.effect-bubba,  #jtg-'
						)
						.concat(
							e,
							'.modula .modula-items .modula-item.effect-sarah,  #jtg-'
						)
						.concat(
							e,
							'.modula .modula-items .modula-item.effect-milo,  #jtg-'
						)
						.concat(
							e,
							'.modula .modula-items .modula-item.effect-julia,  #jtg-'
						)
						.concat(
							e,
							'.modula .modula-items .modula-item.effect-hera,  #jtg-'
						)
						.concat(
							e,
							'.modula .modula-items .modula-item.effect-winston,  #jtg-'
						)
						.concat(
							e,
							'.modula .modula-items .modula-item.effect-selena,  #jtg-'
						)
						.concat(
							e,
							'.modula .modula-items .modula-item.effect-terry,  #jtg-'
						)
						.concat(
							e,
							'.modula .modula-items .modula-item.effect-phoebe,  #jtg-'
						)
						.concat(
							e,
							'.modula .modula-items} .modula-item.effect-apollo,  #jtg-'
						)
						.concat(
							e,
							'.modula .modula-items .modula-item.effect-steve,  #jtg-'
						)
						.concat(
							e,
							'.modula .modula-items .modula-item.effect-ming{ \n\t\tbackground-color: '
						)
						.concat(a.hoverColor, ';\n\t}')),
					(n += '#jtg-'
						.concat(
							e,
							'.modula .modula-items .modula-item.effect-oscar {\n\t\tbackground: -webkit-linear-gradient(45deg, '
						)
						.concat(a.hoverColor, ' 0, #9b4a1b 40%, ')
						.concat(
							a.hoverColor,
							' 100%);\n\t\tbackground: linear-gradient(45deg, '
						)
						.concat(a.hoverColor, ' 0, #9b4a1b 40%, ')
						.concat(a.hoverColor, ' 100%);\n\t}')),
					(n += '#jtg-'
						.concat(
							e,
							'.modula .modula-items .modula-item.effect-roxy {\n\t\tbackground: -webkit-linear-gradient(45deg, '
						)
						.concat(
							a.hoverColor,
							' 0, #05abe0 100%);\n\t\tbackground: linear-gradient(45deg, '
						)
						.concat(a.hoverColor, ' 0, #05abe0 100%);\n\t}')),
					(n += '#jtg-'
						.concat(
							e,
							'.modula .modula-items .modula-item.effect-dexter {\n\t\tbackground: -webkit-linear-gradient(top, '
						)
						.concat(
							a.hoverColor,
							' 0, rgba(104,60,19,1) 100%);\n\t\tbackground: linear-gradient(top, '
						)
						.concat(
							a.hoverColor,
							' 0, rgba(104,60,19,1) 100%);\n\t}'
						)),
					(n += '#jtg-'
						.concat(
							e,
							'.modula .modula-items .modula-item.effect-jazz {\n\t\tbackground: -webkit-linear-gradient(-45deg, '
						)
						.concat(
							a.hoverColor,
							' 0, #f33f58 100%);\n\t\tbackground: linear-gradient(-45deg, '
						)
						.concat(a.hoverColor, ' 0, #f33f58 100%);\n\t}')),
					(n += '#jtg-'
						.concat(
							e,
							'.modula .modula-items .modula-item.effect-lexi {\n\t\tbackground: -webkit-linear-gradient(-45deg, '
						)
						.concat(
							a.hoverColor,
							' 0, #fff 100%);\n\t\tbackground: linear-gradient(-45deg, '
						)
						.concat(a.hoverColor, ' 0, #fff 100%);\n\t}')),
					(n += '#jtg-'
						.concat(
							e,
							'.modula .modula-items .modula-item.effect-duke {\n\t\tbackground: -webkit-linear-gradient(-45deg, '
						)
						.concat(
							a.hoverColor,
							' 0, #cc6055 100%);\n\t\tbackground: linear-gradient(-45deg, '
						)
						.concat(a.hoverColor, ' 0, #cc6055 100%);\n\t}')),
					a.hoverOpacity <= 100 &&
						'none' != a.effect &&
						(n += '#jtg-'
							.concat(
								e,
								'.modula .modula-items .modula-item:hover img {\n\t\t\topacity: '
							)
							.concat(1 - a.hoverOpacity / 100, ' ;\n\t\t}')),
					'default' != a.titleFontWeight &&
						(n += '#jtg-'
							.concat(
								e,
								'.modula .modula-items .modula-item .jtg-title {\n\t\t\tfont-weight : '
							)
							.concat(a.titleFontWeight, ';\n\t\t}')),
					'default' != a.captionFontWeight &&
						(n += '#jtg-'
							.concat(
								e,
								'.modula .modula-items .modula-item p.description {\n\t\t\tfont-weight : '
							)
							.concat(a.captionFontWeight, ';\n\t\t}')),
					(n += '#jtg-'
						.concat(
							e,
							'.modula-gallery .modula-item.effect-terry .jtg-social a:not(:last-child) {\n\t\tmargin-bottom: '
						)
						.concat(a.socialIconPadding, 'px;\n\t}')),
					'slider' == a.type &&
						('true' ==
						jQuery('[aria-label=Settings]').attr('aria-expanded')
							? (n += '#jtg-'.concat(
									e,
									' {\n\t\t\t\t\twidth: 800px;\n\t\t\t\t\t}'
							  ))
							: (n += '#jtg-'.concat(
									e,
									' {\n\t\t\twidth: 1100px;\n\t\t\t}'
							  )),
						(n += '#jtg-'.concat(
							e,
							' .modula-items {\n\t\theight: auto;\n\t\t}'
						)),
						(n += '#jtg-'.concat(
							e,
							' .modula-item {\n\t\tbackground-color: transparent;\n\t\ttransform: none;\n\t\t}'
						))),
					null != a.filters &&
						a.filters.length > 1 &&
						(n += '#jtg-'
							.concat(
								e,
								'.modula-gallery .filters {\n\t\t\ttext-align: '
							)
							.concat(a.filterTextAlignment, ';\n\t\t}')),
					React.createElement('style', {
						dangerouslySetInnerHTML: {
							__html: '\n      \t\t\t\t'.concat(
								n,
								'\n    \t\t\t\t'
							),
						},
					})
				);
			},
			y = wp.components.withFilters('modula.ModulaItemsExtraComponent')(
				function (t) {
					return null;
				}
			);
		function b() {
			return (b = Object.assign
				? Object.assign.bind()
				: function (t) {
						for (var e = 1; e < arguments.length; e++) {
							var a = arguments[e];
							for (var n in a)
								Object.prototype.hasOwnProperty.call(a, n) &&
									(t[n] = a[n]);
						}
						return t;
				  }).apply(this, arguments);
		}
		var w = wp.element,
			j = w.Fragment,
			E = w.useEffect,
			R = wp.components.withFilters('modula.modulaGallery')(function (t) {
				var e = t.attributes,
					a = e.images,
					n = e.jsConfig,
					l = e.id,
					o = t.settings,
					c = t.checkHoverEffect,
					i = t.modulaRun,
					r = t.modulaSlickRun;
				E(function () {
					void 0 !== o && c(o.effect),
						'slider' !== o.type ? i(n) : r(l);
				}, []);
				var d = 'modula modula-gallery ',
					u = 'modula-items';
				return (
					'creative-gallery' == o.type
						? (d += 'modula-creative-gallery')
						: 'custom-grid' == o.type
						? (d += 'modula-custom-grid')
						: 'slider' == o.type
						? (d = 'modula-slider')
						: ((d += 'modula-columns'),
						  (u += ' grid-gallery'),
						  'automatic' == o.grid_type &&
								(u += ' justified-gallery')),
					[
						React.createElement(
							j,
							null,
							React.createElement(v, { id: l, settings: o }),
							React.createElement(
								'div',
								{
									id: 'jtg-'.concat(l),
									className: ''
										.concat(d, ' ')
										.concat(
											null !=
												t.attributes.modulaDivClassName
												? t.attributes
														.modulaDivClassName
												: ''
										),
									'data-config': JSON.stringify(n),
								},
								'grid' == o.type &&
									'automatic' != o.grid_type &&
									React.createElement(
										'div',
										{ className: 'modula-grid-sizer' },
										' '
									),
								React.createElement(
									y,
									b({}, t, { position: 'top' })
								),
								React.createElement(
									'div',
									{ className: u },
									a.length > 0 &&
										React.createElement(
											j,
											null,
											React.createElement(
												j,
												null,
												a.map(function (e, a) {
													return [
														React.createElement(
															h,
															b({}, t, {
																img: e,
																key: a,
																index: a,
															})
														),
													];
												})
											)
										)
								),
								React.createElement(
									y,
									b({}, t, { position: 'bottom' })
								)
							)
						),
					]
				);
			});
		function k() {
			return (k = Object.assign
				? Object.assign.bind()
				: function (t) {
						for (var e = 1; e < arguments.length; e++) {
							var a = arguments[e];
							for (var n in a)
								Object.prototype.hasOwnProperty.call(a, n) &&
									(t[n] = a[n]);
						}
						return t;
				  }).apply(this, arguments);
		}
		function x(t, e) {
			return (
				(function (t) {
					if (Array.isArray(t)) return t;
				})(t) ||
				(function (t, e) {
					var a =
						null == t
							? null
							: ('undefined' != typeof Symbol &&
									t[Symbol.iterator]) ||
							  t['@@iterator'];
					if (null == a) return;
					var n,
						l,
						o = [],
						c = !0,
						i = !1;
					try {
						for (
							a = a.call(t);
							!(c = (n = a.next()).done) &&
							(o.push(n.value), !e || o.length !== e);
							c = !0
						);
					} catch (t) {
						(i = !0), (l = t);
					} finally {
						try {
							c || null == a.return || a.return();
						} finally {
							if (i) throw l;
						}
					}
					return o;
				})(t, e) ||
				(function (t, e) {
					if (!t) return;
					if ('string' == typeof t) return _(t, e);
					var a = Object.prototype.toString.call(t).slice(8, -1);
					'Object' === a && t.constructor && (a = t.constructor.name);
					if ('Map' === a || 'Set' === a) return Array.from(t);
					if (
						'Arguments' === a ||
						/^(?:Ui|I)nt(?:8|16|32)(?:Clamped)?Array$/.test(a)
					)
						return _(t, e);
				})(t, e) ||
				(function () {
					throw new TypeError(
						'Invalid attempt to destructure non-iterable instance.\nIn order to be iterable, non-array objects must have a [Symbol.iterator]() method.'
					);
				})()
			);
		}
		function _(t, e) {
			(null == e || e > t.length) && (e = t.length);
			for (var a = 0, n = new Array(e); a < e; a++) n[a] = t[a];
			return n;
		}
		var C = wp.i18n.__,
			z = wp.element,
			S = z.Fragment,
			N = z.useEffect,
			T = z.useState,
			M = wp.data.withSelect,
			F = wp.components,
			I = F.Button,
			O = F.Spinner,
			q = F.ToolbarGroup,
			V = F.ToolbarItem,
			B = wp.blockEditor.BlockControls,
			L = (0, wp.compose.compose)(
				M(function (t, e) {
					return {
						galleries:
							(0, t('core').getEntityRecords)(
								'postType',
								'modula-gallery',
								{ post_status: 'publish', per_page: 5 }
							) || [],
					};
				}),
				wp.components.withFilters('modula.ModulaEdit')
			)(function (t) {
				var e = t.attributes,
					a = t.galleries,
					n = t.setAttributes,
					o = e.id,
					c = e.images,
					i = e.status,
					r = e.settings,
					d = e.jsConfig,
					u = e.galleryId,
					m = (e.currentGallery, e.currentSelectize),
					f = x(T(t.attributes.align), 2),
					p = (f[0], f[1], x(T(o), 2)),
					h = p[0];
				p[1];
				N(function () {
					0 !== o && v(o);
				}, []),
					N(function () {
						jQuery(document).on(
							'modula_api_after_init',
							function (e, a) {
								t.setAttributes({ instance: a });
							}
						),
							null != t.attributes.instance &&
								null != r &&
								'grid' == r.type &&
								t.attributes.instance.reset(
									t.attributes.instance
								);
					});
				var v = function (t) {
					isNaN(t) ||
						'' == t ||
						((t = parseInt(t)),
						wp
							.apiFetch({
								path: 'wp/v2/modula-gallery/'.concat(t),
							})
							.then(function (e) {
								var a;
								n({ currentGallery: e }),
									n({
										currentSelectize: [
											{
												value: t,
												label:
													'' === e.title.rendered
														? 'Unnamed'
														: ((a =
																e.title
																	.rendered),
														  a
																.replace(
																	'&#8217;',
																	"'"
																)
																.replace(
																	'&#8220;',
																	'"'
																)
																.replace(
																	'&#8216;',
																	"'"
																)),
											},
										],
									}),
									jQuery.ajax({
										type: 'POST',
										data: {
											action: 'modula_get_gallery_meta',
											id: t,
											nonce: modulaVars.nonce,
										},
										url: modulaVars.ajaxURL,
										success: function (e) {
											return y(t, e);
										},
									});
							}));
				};
				var y = function (t, e) {
						!1 !== e.success
							? ((h == t && null != r) || b(t),
							  n({ id: t, images: e, status: 'ready' }))
							: n({ id: t, status: 'ready' });
					},
					b = function (t) {
						fetch(
							''
								.concat(
									modulaVars.restURL,
									'wp/v2/modula-gallery/'
								)
								.concat(t)
						)
							.then(function (t) {
								return t.json();
							})
							.then(function (t) {
								var e = t;
								n({ status: 'loading' }),
									jQuery.ajax({
										type: 'POST',
										data: {
											action: 'modula_get_jsconfig',
											nonce: modulaVars.nonce,
											settings: e.modulaSettings,
										},
										url: modulaVars.ajaxURL,
										success: function (t) {
											var a = Math.floor(
												999 * Math.random()
											);
											n({
												galleryId: a,
												settings: e.modulaSettings,
												jsConfig: t,
												status: 'ready',
											});
										},
									});
							});
					},
					w = React.createElement(
						B,
						null,
						c &&
							c.length > 0 &&
							React.createElement(
								q,
								null,
								React.createElement(
									V,
									null,
									React.createElement(I, {
										label: C(
											'Edit gallery',
											'modula-best-grid-gallery'
										),
										icon: 'edit',
										href:
											modulaVars.adminURL +
											'post.php?post=' +
											o +
											'&action=edit',
										target: '_blank',
									})
								)
							)
					);
				return 0 == o && 'none' === e.galleryType
					? React.createElement(
							S,
							null,
							React.createElement(
								'div',
								{ className: 'modula-block-preview' },
								React.createElement(
									'div',
									{
										className:
											'modula-block-preview__content',
									},
									React.createElement('div', {
										className: 'modula-block-preview__logo',
									}),
									React.createElement(
										'div',
										{ className: 'modula-button-group' },
										0 == a.length &&
											React.createElement(
												'p',
												null,
												' ',
												C(
													'Sorry no galleries found',
													'modula-best-grid-gallery'
												),
												' '
											),
										a.length > 0 &&
											React.createElement(
												I,
												{
													className: 'modula-button',
													target: '_blank',
													onClick: function (t) {
														n({
															status: 'ready',
															id: 0,
															galleryType:
																'gallery',
														});
													},
												},
												C(
													'Display An Existing Gallery',
													'modula-best-grid-gallery'
												),
												g.chevronRightFancy
											),
										null == t.attributes.proInstalled &&
											a.length > 0 &&
											React.createElement(
												I,
												{
													href: 'https://wp-modula.com/pricing/?utm_source=modula-lite&utm_campaign=upsell',
													className:
														'modula-button-upsell',
													isSecondary: !0,
													target: '_blank',
												},
												C(
													'Upgrade to PRO to create galleries using a preset ( fastest way )',
													'modula-best-grid-gallery'
												)
											)
									)
								)
							)
					  )
					: 'loading' === i
					? React.createElement(
							'div',
							{ className: 'modula-block-preview' },
							React.createElement(
								'div',
								{ className: 'modula-block-preview__content' },
								React.createElement('div', {
									className: 'modula-block-preview__logo',
								}),
								React.createElement(O, null)
							)
					  )
					: 0 == o || 0 === c.length
					? React.createElement(
							S,
							{ key: '233' },
							React.createElement(
								s,
								k(
									{
										onIdChange: function (t) {
											return v(t);
										},
										selectOptions: function () {
											var t = [
												{
													value: 0,
													label: C(
														'select a gallery',
														'modula-best-grid-gallery'
													),
												},
											];
											return (
												a.forEach(function (e) {
													var a = e.title,
														n = e.id;
													0 == a.rendered.length
														? t.push({
																value: n,
																label:
																	C(
																		'Unnamed Gallery',
																		'modula-best-grid-gallery'
																	) + n,
														  })
														: t.push({
																value: n,
																label: a.rendered,
														  });
												}),
												t
											);
										},
									},
									t
								)
							),
							React.createElement(
								'div',
								{ className: 'modula-block-preview' },
								React.createElement(
									'div',
									{
										className:
											'modula-block-preview__content',
									},
									React.createElement('div', {
										className: 'modula-block-preview__logo',
									}),
									a.length > 0 &&
										React.createElement(
											S,
											null,
											React.createElement(l, {
												id: o,
												key: o,
												value: o,
												options: m,
												onIdChange: v,
												galleries: a,
											}),
											0 != o &&
												React.createElement(
													I,
													{
														target: '_blank',
														href:
															modulaVars.adminURL +
															'post.php?post=' +
															o +
															'&action=edit',
														isPrimary: !0,
													},
													C('Edit Gallery')
												)
										)
								)
							)
					  )
					: r
					? React.createElement(
							S,
							{ key: '1' },
							w,
							React.createElement(
								s,
								k(
									{
										onIdChange: function (t) {
											v(t);
										},
									},
									t
								)
							),
							React.createElement(
								R,
								k({}, t, {
									settings: r,
									jsConfig: d,
									modulaRun: function (t) {
										if (null != t) {
											n({ status: 'ready' });
											var e = jQuery(
												'.modula.modula-gallery'
											);
											jQuery.each(e, function () {
												jQuery(this).attr('id');
												var t =
													jQuery(this).data('config');
												(t.lazyLoad = 0),
													jQuery(this).modulaGallery(
														t
													);
											});
										}
									},
									modulaSlickRun: function (t) {
										if (
											((t = 'jtg-'.concat(t)),
											n({ status: 'ready' }),
											jQuery('.modula-slider').length >
												0 && void 0 !== jQuery.fn.slick)
										) {
											var e = jQuery('#'.concat(t)).data(
													'config'
												),
												a = jQuery('#'.concat(t)).find(
													'.modula-slider-nav'
												),
												l = jQuery('#'.concat(t)).find(
													'.modula-items'
												);
											if (
												(l.slick(e.slider_settings),
												a.length)
											) {
												var o = a.data('config'),
													c =
														l.slick(
															'slickCurrentSlide'
														);
												a.on('init', function (t, e) {
													a.find(
														'.slick-slide[data-slick-index="' +
															c +
															'"]'
													).addClass('is-active');
												}),
													a.slick(o),
													l.on(
														'afterChange',
														function (t, e, n) {
															a.slick(
																'slickGoTo',
																n
															);
															var l =
																'.slick-slide[data-slick-index="' +
																n +
																'"]';
															a
																.find(
																	'.slick-slide.is-active'
																)
																.removeClass(
																	'is-active'
																),
																a
																	.find(l)
																	.addClass(
																		'is-active'
																	);
														}
													),
													a.on(
														'click',
														'.slick-slide',
														function (t) {
															t.preventDefault();
															var e =
																jQuery(
																	this
																).data(
																	'slick-index'
																);
															l.slick(
																'slickGoTo',
																e
															);
														}
													);
											}
										}
									},
									checkHoverEffect: function (t) {
										jQuery.ajax({
											type: 'POST',
											data: {
												action: 'modula_check_hover_effect',
												nonce: modulaVars.nonce,
												effect: t,
											},
											url: modulaVars.ajaxURL,
											success: function (t) {
												n({ effectCheck: t });
											},
										});
									},
									galleryId: u,
								})
							)
					  )
					: null;
			});
		function P(t, e) {
			for (var a = 0; a < e.length; a++) {
				var n = e[a];
				(n.enumerable = n.enumerable || !1),
					(n.configurable = !0),
					'value' in n && (n.writable = !0),
					Object.defineProperty(t, n.key, n);
			}
		}
		var Q = wp.i18n.__,
			A = wp.blocks.registerBlockType;
		new ((function () {
			function t() {
				!(function (t, e) {
					if (!(t instanceof e))
						throw new TypeError(
							'Cannot call a class as a function'
						);
				})(this, t),
					this.registerBlock();
			}
			var e, a, n;
			return (
				(e = t),
				(a = [
					{
						key: 'registerBlock',
						value: function () {
							(this.blockName = 'modula/gallery'),
								(this.blockAttributes = {
									id: { type: 'number', default: 0 },
									images: { type: 'array', default: [] },
									status: {
										type: 'string',
										default: 'ready',
									},
									galleryId: { type: 'number', default: 0 },
									defaultSettings: {
										type: 'object',
										default: [],
									},
									galleryType: {
										type: 'string',
										default: 'none',
									},
									currentGallery: {
										type: 'object',
										default: {},
									},
									currentSelectize: {
										type: 'array',
										default: [],
									},
								}),
								A(this.blockName, {
									title: modulaVars.gutenbergTitle,
									icon: g.modula,
									description: Q(
										'Make your galleries stand out.',
										'modula-best-grid-gallery'
									),
									keywords: [
										Q('gallery'),
										Q('modula'),
										Q('images'),
									],
									category: 'common',
									supports: {
										align: !0,
										customClassName: !1,
									},
									attributes: this.blockAttributes,
									edit: L,
									save: function () {
										return null;
									},
								});
						},
					},
				]) && P(e.prototype, a),
				n && P(e, n),
				Object.defineProperty(e, 'prototype', { writable: !1 }),
				t
			);
		})())();
	},
]);
