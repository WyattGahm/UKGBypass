#import <substrate.h>
#import <mach-o/dyld.h>

uint64_t realAddr(uint64_t offset) {
	return offset + _dyld_get_image_vmaddr_slide(0);
}
%ctor {
	uint64_t offset = realAddr(0x100236fcc);
	const uint8_t data[] = {0xc0, 0x03, 0x5f, 0xd6}; //asm(ret)
	MSHookMemory((void *)offset, data, sizeof(data));

}

%hook HomeScreenViewController//IPhonePopoverContainerView
%new
- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section{
	if(section == 1) return @"UKGBypass Injected!";
	return nil;
}
%end
