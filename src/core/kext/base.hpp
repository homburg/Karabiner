#ifndef BASE_HPP
#define BASE_HPP

#include <mach/mach_types.h>
#define protected public // A hack for access private member of IOHIKeyboard
#define private public
#include <IOKit/hidsystem/IOHIKeyboard.h>
#include <IOKit/hidsystem/IOHIPointing.h>
#undef protected
#undef private

namespace org_pqrs_KeyRemap4MacBook {
  namespace ExtraRepeatFunc {
    typedef void (*ExtraRepeatFunc)(KeyboardEventCallback callback, OSObject *target, unsigned int flags, AbsoluteTime ts, OSObject *sender, void *refcon);
  }
}

#endif
