#line 1 "Tweak.xm"
#import <substrate.h>
#import <mach-o/dyld.h>

uint64_t realAddr(uint64_t offset) {
	return offset + _dyld_get_image_vmaddr_slide(0);
}
static __attribute__((constructor)) void _logosLocalCtor_055a01fa(int __unused argc, char __unused **argv, char __unused **envp) {
	uint64_t offset = realAddr(0x100236fcc);
	const uint8_t data[] = {0xc0, 0x03, 0x5f, 0xd6}; 
	MSHookMemory((void *)offset, data, sizeof(data));

}


#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class HomeScreenViewController; 
static NSString * _logos_method$_ungrouped$HomeScreenViewController$tableView$titleForFooterInSection$(_LOGOS_SELF_TYPE_NORMAL HomeScreenViewController* _LOGOS_SELF_CONST, SEL, UITableView *, NSInteger); 

#line 14 "Tweak.xm"


static NSString * _logos_method$_ungrouped$HomeScreenViewController$tableView$titleForFooterInSection$(_LOGOS_SELF_TYPE_NORMAL HomeScreenViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UITableView * tableView, NSInteger section){
	if(section == 1) return @"UKGBypass Injected!";
	return nil;
}

static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$HomeScreenViewController = objc_getClass("HomeScreenViewController"); { char _typeEncoding[1024]; unsigned int i = 0; memcpy(_typeEncoding + i, @encode(NSString *), strlen(@encode(NSString *))); i += strlen(@encode(NSString *)); _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; memcpy(_typeEncoding + i, @encode(UITableView *), strlen(@encode(UITableView *))); i += strlen(@encode(UITableView *)); memcpy(_typeEncoding + i, @encode(NSInteger), strlen(@encode(NSInteger))); i += strlen(@encode(NSInteger)); _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$HomeScreenViewController, @selector(tableView:titleForFooterInSection:), (IMP)&_logos_method$_ungrouped$HomeScreenViewController$tableView$titleForFooterInSection$, _typeEncoding); }} }
#line 21 "Tweak.xm"
